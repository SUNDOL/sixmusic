package com.kh.sixmusic.member.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.sixmusic.member.model.service.MemberService;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	// 로그인
	@PostMapping("login.me")
	public String loginMember(Member m, HttpSession session) {
		Member loginUser = memberService.loginMember(m);
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
		}
		return "redirect:/";
	}

	// 로그아웃
	@GetMapping("logout.me")
	public ModelAndView logoutMember(ModelAndView mv, HttpSession session) {
		session.removeAttribute("loginUser");
		mv.setViewName("redirect:/");
		return mv;

	}

	// 회원가입 페이지로 이동
	@GetMapping("signUp.me")
	public String signUpMember() {
		return "member/signUp";
	}

	// 닉네임 중복체크
	@ResponseBody
	@RequestMapping(value = "member/nicknameCheck.me", produces = "application/json; charset=UTF-8")
	public int nicknameCheck(String memberNickname) {
		return memberService.nicknameCheck(memberNickname);
	}

	// 아이디 중복 확인
	@ResponseBody
	@RequestMapping(value = "member/idCheck.me", produces = "application/json; charset=UTF-8")
	public int idCheck(String memberId) {
		return memberService.idCheck(memberId);
	}

	// 회원가입
	@PostMapping("member/submitSignUp.me")
	public String signUpMember(Member m, HttpSession session) {
		int result = memberService.signUpMember(m);
		if (result > 0) {
			session.setAttribute("alertMsg", "회원가입이 완료되었습니다. 가입한 아이디로 로그인해주세요."); // 임시 데이터 수정 필요
			return "redirect:/";
		}
		return "common/error"; // 임시 데이터 수정 필요
	}

	// 카카오 로그인
	@GetMapping("kakaoLogin.me")
	public ModelAndView kakaoMember(Member m, ModelAndView mv, HttpSession session) {
		Member loginUser = memberService.loginMember(m);
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("m", m);
			mv.setViewName("member/signUp"); // 임시 데이터 수정 필요
		}
		return mv;
	}

	// 회원 정보 수정
	@ResponseBody
	@RequestMapping(value = "updateAccount.me")
	public int updateAccount(Member m) {
		return memberService.updateAccount(m);
	}

	// 회원 비밀 번호 수정
	@ResponseBody
	@RequestMapping(value = "updateMemberPwd.me")
	public int updateMemberPwd(Member m) {
		return memberService.updateMemberPwd(m);
	}

	// 주문 내역 조회
	@ResponseBody
	@RequestMapping(value = "viewOrder.me", produces = "application/json; charset=UTF-8")
	public String viewOrder(HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		ArrayList<TotalOrder> toList = memberService.viewTotalOrder(loginUser.getMemberNo());
		ArrayList<ProductOrder> poList = memberService.viewProductOrder(loginUser.getMemberNo());
		HashMap<String, Object> map = new HashMap<>();
		map.put("toList", toList);
		map.put("poList", poList);
		return new Gson().toJson(map);
	}

	//리뷰 작성
	@PostMapping("addToReview.me")
	public ModelAndView addToReview(ModelAndView mv, HttpSession session,MultipartFile image, Review r) {
		
		ReviewAttachment rat = new ReviewAttachment();
		String filePath = "resources/image/productReview";
		String realPath = session.getServletContext().getRealPath("/"+filePath);
		int result = 0;
		
		if (!image.getOriginalFilename().equals("")) {// 파일 업로드가 되었다면
			String originName = image.getOriginalFilename();

			//변경 이미지 명 : review-회원 정보-제품 정보.확장자명
			String ext =  originName.substring(originName.lastIndexOf("."));
			String changeName = "review"+r.getWriter()+"-"+r.getProductNo()+ext;
			
			new File(realPath+changeName);
			
			rat.setOriginName(image.getOriginalFilename());
			rat.setChangeName(changeName);
			rat.setFilePath(filePath);
			
			result = memberService.addToReview(r,rat);
			if(!(result > 0)) {
				new File(realPath+changeName).delete();
			}
			
		}
		
		if(result > 0) {
			mv.setViewName("");
		}else {
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "removeReview.me")
	public int removeReview(Review r) {
		return memberService.removeReview(r);
	}

}
