package com.kh.sixmusic.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sixmusic.member.model.service.MemberService;
import com.kh.sixmusic.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	@PostMapping("login.me")
	public String loginMember(Member m, HttpSession session) {
		Member loginUser = memberService.loginMember(m);
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
		}
		return "redirect:/";
	}

	@GetMapping("signUp.me")
	public String signUpMember(Member m) {
		return "/member/signUp"; //임시 데이터 수정 필요                                                                          
	}

	@PostMapping("signUp.me")
	public String signUpMember(Member m, HttpSession session) {
		int result = memberService.signUpMember(m);
		if (result > 0) {
			session.setAttribute("alertMsg", "성공!"); //임시 데이터 수정 필요 
			return "redirect:/";
		}
		return "common/error"; //임시 데이터 수정 필요 
	}

	@GetMapping("kakao.me")
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
