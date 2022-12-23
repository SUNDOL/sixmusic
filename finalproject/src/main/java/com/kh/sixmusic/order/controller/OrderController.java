package com.kh.sixmusic.order.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.service.OrderService;
import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.order.model.vo.Wishlist;
import com.kh.sixmusic.product.model.vo.Product;


@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	//장바구니 추가
	@ResponseBody
	@RequestMapping("cart/select.or")
	public String selectCart(HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		JsonObject jMap = new JsonObject();
		Gson gson = new Gson();
		String product = gson.toJson(orderService.selectCartProduct(loginUser.getMemberNo()));
		String attachment = gson.toJson(orderService.selectCartAttachment(loginUser.getMemberNo()));
		jMap.addProperty("product", product);
		jMap.addProperty("attachment", attachment);
		return jMap.toString();
	}
	
	//장바구니 추가
	@ResponseBody
	@RequestMapping("cart/insert.or")
	public int insertCart(int productNo, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		Cart c = new Cart();
		c.setMemberNo(loginUser.getMemberNo());
		c.setProductNo(productNo);
		c.setQuantity(1);
		return orderService.insertCart(c);
	}
	
	//장바구니 삭제
	@ResponseBody
	@RequestMapping("cart/delete.or")
	public int deleteCart(int cartNo) {
		return orderService.deleteCart(cartNo);
	}

	//관시상품 출력
	@ResponseBody
	@RequestMapping("wishlist/select.or")
	public String selectWishlist(HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		return new Gson().toJson(orderService.selectWishlistAttachment(loginUser.getMemberNo()));
	}
	
	//관시상품 추가
	@ResponseBody
	@RequestMapping("wishlist/insert.or")
	public int insertWishlist(int productNo, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		Wishlist w = new Wishlist();
		w.setMemberNo(loginUser.getMemberNo());
		w.setProductNo(productNo);
		return orderService.insertWishlist(w);
	}
	
	//관심상품 삭제
	@ResponseBody
	@RequestMapping("wishlist/delete.or")
	public int deleteWishlist(int productNo, HttpSession session) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		Wishlist w = new Wishlist();
		w.setMemberNo(loginUser.getMemberNo());
		w.setProductNo(productNo);
		return orderService.deleteWishlist(w);
	}
	
	// 카카오 페이 결제 메소드
	@ResponseBody
	@RequestMapping("kakaopay/pay.or")
	public String kakaoPay(int[] cartNo,int zipcode, HttpSession session) throws IOException {
		Member loginUser = (Member) session.getAttribute("loginUser");

		//결제할 제품의 정보를 받기
		ArrayList<Product> pList = orderService.seletOrderProduct(cartNo);
		
		//총지불액
		int totalPayment = 0;
		//총수량
		int totalQuantity = 0;
		for (Product p : pList) {
			totalPayment += p.getPrice() * p.getQuantity();
			totalQuantity += p.getQuantity();
		}
		
		//주문 테이블에 데이터 작성
		TotalOrder to = new TotalOrder();
		to.setPayment(totalPayment);
		to.setMemberNo(loginUser.getMemberNo());
		
		int result = orderService.insertOrderDate(to,cartNo);
		
		if (result>0) {
			return null;
		}
		
		// 결제정보를 작성
		URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
		HttpURLConnection urlConn = (HttpURLConnection) url.openConnection();
		urlConn.setRequestMethod("POST");
		String adminKey = "232868c97945c302eb8dae216a22bd2b";
		urlConn.addRequestProperty("Authorization", "KakaoAK " + adminKey);
		urlConn.addRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		urlConn.setDoOutput(true);
		
		// 상품명칭 ex) 5건
		String item_name = totalQuantity+"건";
		// 수량 ex) 5
		String quantity = String.valueOf(totalQuantity);
		// 총 금액 ex) 5000
		String total_amount = String.valueOf(to.getPayment());
		//서버 주소
		String locatin = "http://localhost:8887/sixmusic/";
				
		//카카오페이로 넘길 값
		String parm = "cid=TC0ONETIME"
				+ "&partner_order_id=partner_order_id"
				+ "&partner_user_id=partner_user_id"
				+ "&item_name=" + URLEncoder.encode(item_name, "UTF-8") 
				+ "&quantity=" + quantity 
				+ "&total_amount=" + total_amount 
				+ "&tax_free_amount=0" 
				+ "&approval_url=" + locatin.concat(approval_url)
				+ "&fail_url=" + locatin.concat(fail_url)
				+ "&cancel_url="+ locatin.concat(cancel_url);
		DataOutputStream output = new DataOutputStream(urlConn.getOutputStream());
		output.writeBytes(parm);
		output.close();

		result = urlConn.getResponseCode();

		InputStream input;
		if (result == 200) {
			input = urlConn.getInputStream();
		} else {
			input = urlConn.getErrorStream();
		}
		BufferedReader reader = new BufferedReader(new InputStreamReader(input));
		return reader.readLine();

	}
	

	// 성공시 Mapping
	private String approval_url = "kakaopay/success.or";
	// 실패시 Mapping
	private String fail_url = "kakaopay/falure.or";
	// 취소시 Mapping
	private String cancel_url = "kakaopay/cancel.or";
	// 카카오페이지 이동 페이지
	private String result_url = "common/payResult";
	
	@GetMapping("kakaopay/success.or")
	public ModelAndView paySuccess(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		orderService.updateOrderData(loginUser.getMemberNo());
		mv.addObject("result", "success");
		mv.setViewName(result_url);
		return mv;
	}
	@GetMapping("order/kakaopay/falure.or")
	public ModelAndView payFalure(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		orderService.deleteOrderData(loginUser.getMemberNo());
		mv.addObject("result", "error");
		mv.setViewName(result_url);
		return mv;
	}
	@GetMapping("kakaopay/cancel.or")
	public ModelAndView payCancel(ModelAndView mv, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		orderService.deleteOrderData(loginUser.getMemberNo());
		mv.addObject("result", "cancel");
		mv.setViewName(result_url);
		return mv;
	}
}
