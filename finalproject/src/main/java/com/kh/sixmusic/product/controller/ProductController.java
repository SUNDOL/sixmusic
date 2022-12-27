package com.kh.sixmusic.product.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.service.ProductService;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	// 상품 목록 불러오기
	@GetMapping("form.pr")
	public ModelAndView productListForm(int typeNo, ModelAndView mv) {
		mv.addObject("typeNo", typeNo).setViewName("products/products");
		return mv;
	}

	// 상품 상세페이지  + 사진 + 리뷰 목록
	@ResponseBody
	@RequestMapping(value = "product.pr", produces = "application/json; charset=UTF-8")
	public String productDetails(int productNo) {
		Product product = productService.productDetails(productNo);
		ArrayList<ProductAttachment> productPics = productService.productPics(productNo);
		ArrayList<ProductAttachment> productColors = productService.productColors(productNo);
		ArrayList<Review> productReviewList = productService.productReviewList(productNo);
		Gson gson = new Gson();
		HashMap<String, Object> pMap = new HashMap<>();
		pMap.put("product", product);
		pMap.put("productPics", productPics);
		pMap.put("productColors", productColors);
		pMap.put("productReviewList", productReviewList);
		return gson.toJson(pMap);
	}
	
	// 리뷰: 상세 리뷰
	@ResponseBody
	@RequestMapping(value = "reviewDetails.pr", produces = "application/json; charset=UTF-8")
	public String reviewDetails(int reviewNo) {
		Review review = productService.reviewDetails(reviewNo);
		ReviewAttachment reviewAttachment = productService.reviewDetailsPic(reviewNo);
		Gson gson = new Gson();
		HashMap<String, Object> rMap = new HashMap<>();
		rMap.put("review", review);
		rMap.put("reviewAttachment", reviewAttachment);
		return gson.toJson(rMap);
	}
	

	// 상품 검색
	@ResponseBody
	@RequestMapping(value = "select.pr", produces = "application/json; charset=utf-8")
	public String productList(Filter f, @RequestParam(defaultValue = "1") int currentPage,
			@RequestParam(defaultValue = "20") int boardLimit) {
		int listCount = productService.listCount(f);
		int pageLimit = 10;
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit);
		ArrayList<Product> list = productService.productList(f, pi);
		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<>();
		map.put("pi", pi);
		map.put("p", list);
		return gson.toJson(map);
	}

}
