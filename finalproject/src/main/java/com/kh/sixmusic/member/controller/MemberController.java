package com.kh.sixmusic.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sixmusic.member.model.service.MemberService;
import com.kh.sixmusic.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	// 로그인
	@PostMapping("member/login.me")
	public String loginMember(Member m, HttpSession session) {	
		Member loginUser = memberService.loginMember(m);
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
		}
		return "redirect:/";
	}

	// 로그아웃
	@GetMapping("member/logout.me")
	public ModelAndView logoutMember(ModelAndView mv, HttpSession session) {
		session.removeAttribute("loginUser");
		mv.setViewName("redirect:/");
		return mv;
		
	}
	
	// 회원가입 페이지로 이동
	@GetMapping("member/signUp.me")
	public String signUpMember() {
		return "member/signUp";                                                                          
	}
	
	// 닉네임 중복체크
	@ResponseBody
	@RequestMapping(value = "member/nicknameCheck.me", produces = "application/json; charset=UTF-8")
	public int nicknameCheck(String memberNickname) {
		return memberService.nicknameCheck(memberNickname);
	}
	
	// 회원가입
	@PostMapping("member/submitSignUp.me")
	public String signUpMember(Member m, HttpSession session) {
		int result = memberService.signUpMember(m);
		if (result > 0) {
			session.setAttribute("alertMsg", "회원가입이 완료되었습니다. 가입한 아이디로 로그인해주세요."); //임시 데이터 수정 필요 
			return "redirect:/";
		}
		return "common/error"; //임시 데이터 수정 필요 
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
