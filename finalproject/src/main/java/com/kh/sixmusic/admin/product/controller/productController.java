package com.kh.sixmusic.admin.product.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sixmusic.admin.product.model.sevice.ProductService;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Controller
public class productController {
	
	public void deleteImge(ArrayList<ProductAttachment> patList) {
		for (ProductAttachment pat : patList) {
			new File("/"+pat.getFilePath()+pat.getChangeName()).delete();
		}
	}
	
	//글작성 페이지로 이동시키는 메소드(포워딩)
	@GetMapping("insert.ad")
	public String insertBoard() {
		return "board/boardEnrollForm";
	}
	@Autowired
	private ProductService productService;
	
	
	
	//글등록을 시키는 메소드 
	@PostMapping("insert.ad")
	public ModelAndView insertBoard(Product p,
									List<MultipartFile> imageList,
									ModelAndView mv,
									HttpSession session) {

		
		
		int productNo = productService.addToProduct(p);
		
		if (productNo>0) {
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
		for (MultipartFile image: imageList) {
			originName = image.getOriginalFilename();
			ext = originName.substring(originName.lastIndexOf("."));
			changeName = productNo+"-"+(cnt++)+ext;
			
			try {
				image.transferTo(new File(savePath+changeName));
			
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			pat.setOriginName(originName);
			pat.setChangeName(changeName);
			patList.add(pat);
		}
		
		int result = productService.addToProductImage(patList);
		
		if (result > 0) {
			mv.addObject("alertMsg", "제품등록에 성공했습니다.");
			mv.setViewName("");
		}else {
			deleteImge(patList);
			mv.setViewName("common/error");
		}
		
		return mv;
	}
}
