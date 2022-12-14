package com.kh.sixmusic.order.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.sixmusic.order.model.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	// 카카오 페이 결제 메소드
	@ResponseBody
	@RequestMapping("kakaopay.cls")
	public String kakaoPay() throws IOException {
		//결제정보를 가져와야 함
		URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
		HttpURLConnection urlConn = (HttpURLConnection) url.openConnection();
		urlConn.setRequestMethod("POST");
		String adminKey = "232868c97945c302eb8dae216a22bd2b";
		urlConn.addRequestProperty("Authorization", "KakaoAK " + adminKey);
		urlConn.addRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		urlConn.setDoOutput(true);
		// 상품명칭 ex) XXX외 5건
		String item_name = "";
		// 수량 ex) 5
		String quantity = "";
		// 총 금액 ex) 5000
		String total_amount = "";
		// 성공시 이동 페이지
		String approval_url = "";
		// 실패시 이동 페이지
		String fail_url = "";
		// 취소시 이동 페이지
		String cancel_url = "";

		String parm = "cid=TC0ONETIME" 
				+ "&partner_order_id=partner_order_id" 
				+ "&partner_user_id=partner_user_id"
				+ "&item_name=" + URLEncoder.encode(item_name, "UTF-8") 
				+ "&quantity=" + quantity 
				+ "&total_amount=" + total_amount 
				+ "&tax_free_amount=0" 
				+ "&approval_url=http://localhost:8887/sixmusic/" + approval_url
				+ "&fail_url=http://localhost:8887/sixmusic/" + fail_url 
				+ "&cancel_url=http://localhost:8887/sixmusic/" + cancel_url;
		DataOutputStream output = new DataOutputStream(urlConn.getOutputStream());
		output.writeBytes(parm);
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
}
