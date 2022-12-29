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
import java.util.HashMap;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.service.OrderService;
import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.Wishlist;
import com.kh.sixmusic.product.model.vo.Product;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;

	// 상품이 장바구니에 담겨있는지 없는지 확인
	@ResponseBody
	@RequestMapping("checkCart.or")
	public int checkCart(int productNo, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		Cart c = new Cart();
		c.setMemberNo(loginUser.getMemberNo());
		c.setProductNo(productNo);
		return orderService.checkCart(c);
	}

	// 장바구니 추가
	@ResponseBody
	@RequestMapping("addToCart.or")
	public int addToCart(int productNo, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		Cart c = new Cart();
		c.setMemberNo(loginUser.getMemberNo());
		c.setProductNo(productNo);
		c.setQuantity(1);
		return orderService.addToCart(c);
	}

	// 장바구니에 담긴 상품 "Cart"에 출력
	@ResponseBody
	@RequestMapping(value = "showCart.or", produces = "application/json; charset=UTF-8")
	public String showCart(HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		int memberNo = loginUser.getMemberNo();
		ArrayList<Cart> product = orderService.showCart(memberNo);
		Gson gson = new Gson();
		HashMap<String, Object> jMap = new HashMap<>();
		jMap.put("product", product);
		return gson.toJson(jMap);
	}

	// 장바구니 삭제
	@ResponseBody
	@RequestMapping("removeCart.or")
	public int removeCart(int cartNo) {
		return orderService.removeCart(cartNo);
	}

	// 관심상품 중복 확인
	@ResponseBody
	@RequestMapping("checkWishlist.or")
	public int checkWishlist(int productNo, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		Wishlist w = new Wishlist();
		w.setMemberNo(loginUser.getMemberNo());
		w.setProductNo(productNo);
		return orderService.checkWishlist(w);
	}

	// 관심상품 추가
	@ResponseBody
	@RequestMapping("addToWishlist.or")
	public int addToWishlist(int productNo, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		Wishlist w = new Wishlist();
		w.setMemberNo(loginUser.getMemberNo());
		w.setProductNo(productNo);
		return orderService.addToWishlist(w);
	}

	// 관심상품 출력
	@ResponseBody
	@RequestMapping(value = "showWishlist.or", produces = "application/json; charset=UTF-8")
	public String showWishlist(HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		return new Gson().toJson(orderService.showWishlist(loginUser.getMemberNo()));
	}

	// 관심상품 삭제
	@ResponseBody
	@RequestMapping("removeWishlist.or")
	public int removeWishlist(int productNo, HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		Wishlist w = new Wishlist();
		w.setMemberNo(loginUser.getMemberNo());
		w.setProductNo(productNo);
		return orderService.removeWishlist(w);
	}

	// 결제 (confirmation) 페이지로 이동
	@GetMapping("confirmation.or")
	public String confirmationPage() {
		return "products/confirmation";
	}

	// 결제 (confirmation) 페이지에 보여줄 데이터 가져오기
	@ResponseBody
	@RequestMapping(value = "showConfirmationInfo.or", produces = "application/json; charset=UTF-8")
	public String showConfirmationInfo(HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		int memberNo = loginUser.getMemberNo();
		ArrayList<Product> product = orderService.showConfirmationInfo(memberNo);
		Gson gson = new Gson();
		HashMap<String, Object> conMap = new HashMap<>();
		conMap.put("product", product);
		return gson.toJson(conMap);
	}

	// 카카오페이 결제 메소드
	@ResponseBody
	@RequestMapping("pay.or")
	public String kakaoPay(HttpSession session,@RequestParam(defaultValue = "0") int point) throws IOException {
		Member loginUser = (Member) session.getAttribute("loginUser");
		
		Product p = orderService.selectOrderCart(loginUser.getMemberNo());

		// 결제정보를 작성
		URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
		HttpURLConnection urlConn = (HttpURLConnection) url.openConnection();
		urlConn.setRequestMethod("POST");
		String adminKey = "232868c97945c302eb8dae216a22bd2b";
		urlConn.addRequestProperty("Authorization", "KakaoAK " + adminKey);
		urlConn.addRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		urlConn.setDoOutput(true);
		
		// 상품명칭 ex) 5건
		String item_name = "SIXMUSIC 악기 " + p.getQuantity() + "건";
		// 수량 ex) 5
		String quantity = String.valueOf(p.getQuantity());
		// 총 금액 ex) 5000
		String total_amount = String.valueOf(p.getPrice() - point);
		// 서버 주소
		String local = "http://localhost:8887/sixmusic/";
		//포인트
		approval_url += point;
		// 카카오페이로 넘길 값
		StringBuffer parm = new StringBuffer();
		parm.append("cid=TC0ONETIME");
		parm.append("&partner_order_id=partner_order_id");
		parm.append("&partner_user_id=partner_user_id");
		parm.append("&item_name=" + URLEncoder.encode(item_name, "UTF-8"));
		parm.append("&quantity=" + quantity);
		parm.append("&total_amount=" + total_amount);
		parm.append("&tax_free_amount=0");
		parm.append("&approval_url=" + local.concat(approval_url).toString());
		parm.append("&fail_url=" + local.concat(fail_url).toString());
		parm.append("&cancel_url=" + local.concat(cancel_url).toString());
		DataOutputStream output = new DataOutputStream(urlConn.getOutputStream());
		output.writeBytes(parm.toString());
		output.close();
		int result = urlConn.getResponseCode();
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
	private String approval_url = "success.or?point=";
	// 실패시 Mapping
	private String fail_url = "falure.or";
	// 취소시 Mapping
	private String cancel_url = "cancel.or";
	// 카카오페이지 이동 페이지
	private String result_url = "common/";

	@GetMapping("success.or")
	public ModelAndView paySuccess(ModelAndView mv, HttpSession session, int point) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		loginUser.setPoint(point);
		orderService.uploadOrderData(loginUser);
		session.setAttribute("loginUser", loginUser);
		mv.addObject("result", "success");
		mv.setViewName(result_url+"succeess");
		return mv;
	}

	@GetMapping("falure.or")
	public ModelAndView payFalure(ModelAndView mv) {
		mv.addObject("result", "error");
		mv.setViewName(result_url+"fail");
		return mv;
	}

	@GetMapping("cancel.or")
	public ModelAndView payCancel(ModelAndView mv) {
		mv.addObject("result", "cancel");
		mv.setViewName(result_url);
		return mv;
	}
}
