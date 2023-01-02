package com.kh.sixmusic.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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

import com.kh.sixmusic.admin.model.service.AdminService;
import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	// 제품 등록
	@PostMapping("addToProduct.ad")
	public ModelAndView insertBoard(Product p, List<MultipartFile> imageList, ModelAndView mv, HttpSession session) {

		int productNo = adminService.addToProduct(p);

		if (productNo > 0) {
			mv.setViewName("common/error");
			return mv;
		}

		ArrayList<ProductAttachment> patList = new ArrayList<ProductAttachment>();
		String savePath = session.getServletContext().getRealPath("/resources/image/product/");
		ProductAttachment pat = new ProductAttachment();
		String filePath = "resources/image/product/";

		pat.setProductNo(productNo);
		pat.setFilePath(filePath);
		int cnt = 1;
		String originName;
		String changeName;
		String ext;
		for (MultipartFile image : imageList) {
			originName = image.getOriginalFilename();
			ext = originName.substring(originName.lastIndexOf("."));
			changeName = productNo + "-" + (cnt++) + ext;

			try {
				image.transferTo(new File(savePath + changeName));

			} catch (IOException e) {
				e.printStackTrace();
			}

			pat.setOriginName(originName);
			pat.setChangeName(changeName);
			patList.add(pat);
		}

		int result = adminService.addToProductImage(patList);

		if (result > 0) {
			mv.addObject("alertMsg", "제품등록에 성공했습니다.");
			mv.setViewName("");
		} else {
			deleteImge(patList);
			mv.setViewName("common/error");
		}

		return mv;
	}

	// 이미지 삭제
	public void deleteImge(ArrayList<ProductAttachment> patList) {
		for (ProductAttachment pat : patList) {
			new File("/" + pat.getFilePath() + pat.getChangeName()).delete();
		}
	}

	// 제품 등록
	@PostMapping("removeProduct.ad")
	public ModelAndView removeProduct(int productNo, ModelAndView mv, HttpSession session) {
		int result = adminService.removeProduct(productNo);
		if (result > 0) {
			session.setAttribute("alertMsg", "제품등록에 성공했습니다.");
			mv.setViewName("");
		} else {
			mv.setViewName("common/error");
		}
		return mv;
	}

	// 회원 제거
	@PostMapping("removeMember.ad")
	public ModelAndView removeMember(int memberNo, ModelAndView mv, HttpSession session) {
		int result = adminService.removeMember(memberNo);
		if (result > 0) {
			session.setAttribute("alertMsg", "회원 제거에 성공했습니다.");
			mv.setViewName("");
		} else {
			mv.setViewName("common/error");
		}
		return mv;
	}

	// 회원 제거
	@PostMapping("grandPoint.ad")
	public ModelAndView grandPoint(Member m, ModelAndView mv, HttpSession session) {
		int result = adminService.grandPoint(m);
		if (result > 0) {
			session.setAttribute("alertMsg", "포인트 추가 지급에 성공했습니다.");
			mv.setViewName("");
		} else {
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	@PostMapping("modifyMemberGrade.ad")
	public ModelAndView modifyMemberGrade(Member m, ModelAndView mv, HttpSession session) {

		int result = adminService.modifyMemberGrade(m);
		if (result > 0) {
			session.setAttribute("alertMsg", "회원 등급에 성공했습니다.");
			mv.setViewName("");
		} else {
			mv.setViewName("common/error");
		}
		return mv;
	}

}
