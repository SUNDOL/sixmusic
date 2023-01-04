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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.member.model.service.MemberService;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
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
		} else {
			session.setAttribute("alertMsg", "아이디 혹은 비밀번호를 다시 확인해주세요.");
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
	@RequestMapping(value = "nicknameCheck.me", produces = "application/json; charset=UTF-8")
	public int nicknameCheck(String memberNickname) {
		return memberService.nicknameCheck(memberNickname);
	}

	// 아이디 중복 확인
	@ResponseBody
	@RequestMapping(value = "idCheck.me", produces = "application/json; charset=UTF-8")
	public int idCheck(String memberId) {
		return memberService.idCheck(memberId);
	}

	// 회원가입
	@PostMapping("submitSignUp.me")
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

	// My Account 페이지 이동
	@GetMapping("myAccount.me")
	public String myAccount() {
		return "member/myAccount";
	}

	// 회원 정보 수정
	@PostMapping(value = "updateAccount.me")
	public ModelAndView updateAccount(ModelAndView mv, HttpSession session, Member m) {
		int result = memberService.updateAccount(m);
		if (result > 0) {
			Member loginUser = (Member) session.getAttribute("loginUser");
			loginUser = memberService.loginMember(loginUser);
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("alertMsg", "회원정보가 성공적으로 변경되었습니다.");
			mv.setViewName("member/myAccount");
		} else {
			mv.addObject("errorMsg", "에러 ㅜㅜ");
			mv.setViewName("common/error");
		}
		return mv;
	}

	// 회원 비밀번호 수정
	@PostMapping(value = "updateMemberPwd.me")
	public ModelAndView updateMemberPwd(ModelAndView mv, HttpSession session, Member m) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		loginUser.setMemberPwd(m.getMemberPwd());
		int result = memberService.updateMemberPwd(m);
		if (result > 0) {
			loginUser = memberService.loginMember(loginUser);
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("alertMsg", "비밀번호가 성공적으로 변경되었습니다.");
			mv.setViewName("member/myAccount");
		} else {
			mv.addObject("errorMsg", "에러 ㅜㅜ");
			mv.setViewName("common/error");
		}
		return mv;
	}

	// 회원 탈퇴 - 비밀번호 확인
	@ResponseBody
	@RequestMapping(value = "deleteMemberPwdCheck.me", produces = "application/json; charset=UTF-8")
	public int deleteMemberPwdCheck(String memberPwd, HttpSession session) {
		int result = 0;
		Member loginUser = (Member) session.getAttribute("loginUser");
		String aa = loginUser.getMemberPwd();
		if (memberPwd.equals(aa)) {
			result = 1;
		} else {
			result = 0;
		}
		return result;
	}

	// 회원 탈퇴
	@PostMapping(value = "deleteMember.me")
	public ModelAndView deleteMember(ModelAndView mv, HttpSession session, int memberNo) {
		int result = memberService.deleteMember(memberNo);
		if (result > 0) {
			session.setAttribute("alertMsg", "탈퇴가 완료되었습니다. SIXMUSIC을 이용해주셔서 감사합니다. 시발롬아.");
			session.removeAttribute("loginUser");
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg", "에러 ㅜㅜ");
			mv.setViewName("common/error");
		}
		return mv;
	}

	// My Order History 페이지 이동
	@GetMapping("orderHistory.me")
	public String myOrderHistory() {
		return "member/myOrderHistory";
	}

	// 마지막 주문 내역 조회
	@ResponseBody
	@RequestMapping(value = "viewLastOrder.me", produces = "application/json; charset=UTF-8")
	public String viewListOrder(HttpSession session) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		ArrayList<TotalOrder> toList = memberService.viewLastTotalOrder(loginUser.getMemberNo());
		ArrayList<Product> poList = memberService.viewLastProductOrder(loginUser.getMemberNo());
		HashMap<String, Object> map = new HashMap<>();
		map.put("toList", toList);
		map.put("poList", poList);
		return new Gson().toJson(map);
	}

	// 주문 내역 조회
	@ResponseBody
	@RequestMapping(value = "viewOrder.me", produces = "application/json; charset=UTF-8")
	public String viewOrder(HttpSession session, @RequestParam(defaultValue = "1") int currentPage) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		int listCount = memberService.orderListCount(loginUser.getMemberNo());

		PageInfo pi = new PageInfo(listCount, currentPage, 10, 10);
		ArrayList<Product> poList = memberService.viewProductOrder(loginUser.getMemberNo(), pi);

		ArrayList<Integer> orderNo = new ArrayList<>();

		for (Product po : poList) {
			orderNo.add(po.getRefOrderNo());
		}
		HashMap<String, Object> toSearch = new HashMap<>();
		toSearch.put("memberNo", loginUser.getMemberNo());
		toSearch.put("orderNo", orderNo);
		ArrayList<TotalOrder> toList = memberService.viewTotalOrder(toSearch);

		HashMap<String, Object> map = new HashMap<>();
		map.put("toList", toList);
		map.put("poList", poList);
		map.put("pi", pi);

		return new Gson().toJson(map);
	}

	// 리뷰 작성
	@PostMapping("addToReview.me")
	public ModelAndView addToReview(ModelAndView mv, HttpSession session, MultipartFile image, Review r) {
		ReviewAttachment rat = new ReviewAttachment();
		String filePath = "resources/image/productReview/";
		String realPath = session.getServletContext().getRealPath("/" + filePath);
		int result = 0;
		if (!image.getOriginalFilename().equals("")) {// 파일 업로드가 되었다면
			String originName = image.getOriginalFilename();
			// 변경 이미지 명 : review-회원 정보-제품 정보.확장자명
			String ext = originName.substring(originName.lastIndexOf("."));
			String changeName = "review-" + r.getMemberNo() + "-" + r.getProductNo() + ext;
			try {
				image.transferTo(new File(realPath + changeName));
			} catch (IOException e) {
				e.printStackTrace();
			}
			rat.setOriginName(image.getOriginalFilename());
			rat.setChangeName(changeName);
			rat.setFilePath(filePath);
			result = memberService.addToReview(r, rat);
			if (!(result > 0)) {
				new File(realPath + changeName).delete();
			}
		}
		if (result > 0) {
			session.setAttribute("alertMsg", "감사합니다. 고객님의 소중한 리뷰가 성공적으로 등록되었습니다.");
			mv.setViewName("member/myOrderHistory");
		} else {
			mv.addObject("errorMsg", "에러 발생");
			mv.setViewName("common/error");
		}
		return mv;
	}

	// 리뷰 보기/수정
	@ResponseBody
	@RequestMapping(value = "showReview.me", produces = "application/json; charset=UTF-8")
	public String showReview(int productNo, int memberNo) {
		Review r = new Review();
		r.setProductNo(productNo);
		r.setMemberNo(memberNo);
		r = memberService.showReview(r);
		int reviewNo = r.getReviewNo();
		ReviewAttachment reviewAttachment = memberService.showReviewPics(reviewNo);
		Gson gson = new Gson();
		HashMap<String, Object> rMap = new HashMap<>();
		rMap.put("review", r);
		rMap.put("reviewAttachment", reviewAttachment);
		return gson.toJson(rMap);
	}

	// 리뷰 수정
	@PostMapping("confirmReviewModification.me")
	public ModelAndView modifyReview(ModelAndView mv, HttpSession session, MultipartFile image, Review r, ReviewAttachment rat) {
		String realPath = session.getServletContext().getRealPath("/"+rat.getFilePath());
		ReviewAttachment changeRat = null;
		// 1. 기존 이미지 삭제 후 새 이미지로 변경
		if (!image.getOriginalFilename().equals("")) {
			changeRat = new ReviewAttachment();
			String originName = image.getOriginalFilename();
			// 변경 이미지 명 : review-회원 정보-제품 정보.확장자명
			String ext = originName.substring(originName.lastIndexOf("."));
			String changeName = "review-" + r.getMemberNo() + "-" + r.getProductNo() + ext;
			try {
				image.transferTo(new File(realPath + changeName));
			} catch (IOException e) {
				e.printStackTrace();
			}
			changeRat.setReviewNo(rat.getReviewNo());
			changeRat.setOriginName(originName);
			changeRat.setChangeName(changeName);
			changeRat.setFilePath(rat.getFilePath());
	
		}
		int result = memberService.confirmReviewModification(r, changeRat);
		if(result>0) {
			if (changeRat!= null) {
				new File(realPath + rat.getChangeName()).delete();
			}
			session.setAttribute("alertMsg", "리뷰 수정에 성공했습니다!!!");
			
		}else {
			if (changeRat!= null) {
				new File(realPath + changeRat.getChangeName()).delete();
			}
			session.setAttribute("alertMsg", "리뷰 수정에 실패했습니다.");
			
		}
		mv.setViewName("member/myOrderHistory");
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "removeReview.me")
	public int removeReview(HttpSession session,Review r) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		r.setMemberNo(loginUser.getMemberNo());
		return memberService.removeReview(r);
	}

}
