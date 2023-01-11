package com.kh.sixmusic.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
import com.kh.sixmusic.admin.model.service.AdminService;
import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@GetMapping("admin.ad")
	public String admin() {
		return "admin/admin";
	}
	
	@PostMapping("addToBrand.ad")
	public String addToBrand(HttpSession session,String brand) {
		int result = adminService.addToBrand(brand);
		if (result>0) {
			session.setAttribute("alertMsg", "브래드를 추가 했습니다!!!");
		}else{
			session.setAttribute("alertMsg", "브래드 추가에 실패했습니다.");
		}
		return "redirect:/admin.ad";
	}
	@PostMapping("addToModel.ad")
	public String addToModel(HttpSession session,Model m) {
		int result = adminService.addToModel(m);
		if (result>0) {
			session.setAttribute("alertMsg", "모델를 추가 했습니다!!!");
		}else{
			session.setAttribute("alertMsg", "모델 추가에 실패했습니다.");
		}
		return "redirect:/admin.ad";
	}
	@PostMapping("modiBrand.ad")
	public String modiBrand(HttpSession session,Brand b) {
		int result = adminService.modiBrand(b);
		if (result>0) {
			session.setAttribute("alertMsg", "브랜드를 수정 했습니다!!!");
		}else{
			session.setAttribute("alertMsg", "브랜드 수정에 실패했습니다.");
		}
		return "redirect:/admin.ad";
	}
	@PostMapping("modiModel.ad")
	public String modiModel(HttpSession session,Model m) {
		int result = adminService.modiModel(m);
		if (result>0) {
			session.setAttribute("alertMsg", "모델를 수정 했습니다!!!");
		}else{
			session.setAttribute("alertMsg", "모델 수정에 실패했습니다.");
		}
		return "redirect:/admin.ad";
	}
	
	@ResponseBody
	@RequestMapping(value = "brandData.ad", produces = "application/json; charset=utf-8")
	public String brandData(){
		ArrayList<Brand> list = adminService.selectBrand();
		return new Gson().toJson(list);
	}
	@ResponseBody
	@RequestMapping(value = "modelData.ad", produces = "application/json; charset=utf-8")
	public String modelData(int brandNo){
		ArrayList<Model> list = adminService.selectModel(brandNo);
		return new Gson().toJson(list);
	}
	
	
	// 제품 등록
	@PostMapping("addToProduct.ad")
	public ModelAndView addToProduct(Product p, List<MultipartFile> imageList, ModelAndView mv, HttpSession session) {
		int productNo = adminService.addToProduct(p);

		if (!(productNo > 0)) {
			mv.setViewName("common/error");
			return mv;
		}

		ArrayList<ProductAttachment> patList = new ArrayList<ProductAttachment>();
		String savePath = session.getServletContext().getRealPath("/resources/image/product/");
		String filePath = "resources/image/product/";

		int cnt = 1;
		String originName;
		String changeName;
		String ext;
		for (MultipartFile image : imageList) {
			ProductAttachment pat = new ProductAttachment();
			pat.setProductNo(productNo);
			pat.setFilePath(filePath);
			originName = image.getOriginalFilename();
			ext = originName.substring(originName.lastIndexOf("."));
			changeName = productNo + "-" + (cnt++) + ext;
			System.out.println(changeName);
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
			session.setAttribute("alertMsg", "제품등록에 성공했습니다.");
			mv.setViewName("redirect:/admin.ad");
		} else {
			deleteImge(patList, savePath);
			mv.setViewName("common/error");
		}
		return mv;
	}

	// 이미지 삭제
	public void deleteImge(ArrayList<ProductAttachment> patList, String savePath) {
		for (ProductAttachment pat : patList) {
			new File(savePath + pat.getChangeName()).delete();
		}
	}
	//제품 변경
	@PostMapping("changeToProduct.ad")
	public ModelAndView changeToProduct(Product p, ModelAndView mv, HttpSession session) {
		int result = adminService.changeToProduct(p);
		if (result > 0) {
			session.setAttribute("alertMsg", "제품 수정에 성공했습니다.");
			mv.setViewName("redirect:/admin.ad");
		} else {
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	// 제품 삭제
	@PostMapping("removeProduct.ad")
	public ModelAndView removeProduct(int productNo, ModelAndView mv, HttpSession session) {
		int result = adminService.removeProduct(productNo);
		if (result > 0) {
			session.setAttribute("alertMsg", "제품 삭제에 성공했습니다.");
			mv.setViewName("redirect:/admin.ad");
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

	// 포인트 변경
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

	//맴버 등급 변경
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
