package com.kh.sixmusic.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sixmusic.member.model.service.MemberService;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.Address;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	@PostMapping("member/login.me")
	public String loginMember(Member m, HttpSession session) {	
		Member loginUser = memberService.loginMember(m);
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
		}
		return "redirect:/";
	}

	@GetMapping("member/logout.me")
	public ModelAndView logoutMember(ModelAndView mv, HttpSession session) {
		session.removeAttribute("loginUser");
		mv.setViewName("redirect:/");
		return mv;
		
	}
	
	
	@PostMapping("member/signUp.me")
	public String signUpMember(Member m, Address a, HttpSession session) {
		int result = memberService.signUpMember(m, a);
		if (result > 0) {
			session.setAttribute("alertMsg", "success!!"); //임시 데이터 수정 필요 
			return "redirect:/";
		}
		return "common/error"; //임시 데이터 수정 필요 
	}
	
	@GetMapping("member/signUp.me")
	public String signUpMember(Member m) {
		return "/member/signUp"; //임시 데이터 수정 필요                                                                          
	}

	@PostMapping("member/secession.me")
	public String secessionMember(Member m, HttpSession session) {
		int result = memberService.secessionMember(m);
		if (result > 0) {
			session.setAttribute("alertMsg", "success!!"); //임시 데이터 수정 필요 
			return "redirect:/";
		}
		return "common/error"; //임시 데이터 수정 필요 
	}

	
	@GetMapping("kakao/login.me")
	public ModelAndView kakaoMember(Member m, ModelAndView mv, HttpSession session) {
		Member loginUser = memberService.loginMember(m);
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("m", m);
			mv.setViewName("member/signUp"); //임시 데이터 수정 필요 
		}
		return mv;
	}
	
}
