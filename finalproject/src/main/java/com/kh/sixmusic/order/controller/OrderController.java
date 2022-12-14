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
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Product;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;

	// 카카오 페이 결제 메소드
	@ResponseBody
	@RequestMapping("kakaopay.cls")
	public String kakaoPay(int[] cartNo, HttpSession session) throws IOException {
		
		ArrayList<Product> pList = orderService.seletProductList(cartNo);
		Member loginUser = (Member) session.getAttribute("loginUser");
		int payment = 0;
		int sum = 0;
		for (Product p : pList) {
			payment += p.getPrice() * p.getQuantity();
			sum += p.getQuantity();
		}
		
		TotalOrder to = new TotalOrder();
		to.setPayment(payment);
		to.setMemberNo(loginUser.getMemberNo());
		
		int result = orderService.insertOrder(to,cartNo);
		
		// 결제정보를 작성
		URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
		HttpURLConnection urlConn = (HttpURLConnection) url.openConnection();
		urlConn.setRequestMethod("POST");
		String adminKey = "232868c97945c302eb8dae216a22bd2b";
		urlConn.addRequestProperty("Authorization", "KakaoAK " + adminKey);
		urlConn.addRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		urlConn.setDoOutput(true);
		
		// 상품명칭 ex) 5건
		String item_name = sum+"건";
		// 수량 ex) 5
		String quantity = String.valueOf(sum);
		// 총 금액 ex) 5000
		String total_amount = String.valueOf(to.getPayment());
		// 성공시 이동 페이지
		String approval_url = "success.or";
		// 실패시 이동 페이지
		String fail_url = "error.or";
		// 취소시 이동 페이지
		String cancel_url = "cancel.or";

		String parm = "cid=TC0ONETIME" + "&partner_order_id=partner_order_id" + "&partner_user_id=partner_user_id"
				+ "&item_name=" + URLEncoder.encode(item_name, "UTF-8") + "&quantity=" + quantity + "&total_amount="
				+ total_amount + "&tax_free_amount=0" + "&approval_url=http://localhost:8887/sixmusic/" + approval_url
				+ "&fail_url=http://localhost:8887/sixmusic/" + fail_url + "&cancel_url=http://localhost:8887/sixmusic/"
				+ cancel_url;
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
	
	
	@GetMapping("success.or")
	public ModelAndView paySuccess(ModelAndView mv) {
		mv.addObject("result", "success");
		mv.setViewName("common/payResult");
		return mv;
	}
	@GetMapping("error.or")
	public ModelAndView payError(ModelAndView mv) {
		mv.addObject("result", "error");
		mv.setViewName("common/payResult");
		return mv;
	}
	@GetMapping("cancel.or")
	public ModelAndView payCancel(ModelAndView mv) {
		mv.addObject("result", "cancel");
		mv.setViewName("common/payResult");
		return mv;
	}
}
