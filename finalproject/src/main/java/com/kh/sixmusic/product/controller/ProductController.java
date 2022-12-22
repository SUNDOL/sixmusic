package com.kh.sixmusic.product.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.service.ProductService;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	// 상품 목록 페이지 이동 후 목록 보여주기
	@GetMapping("list.pr")
	public ModelAndView productList(ModelAndView mv, int typeNo) {
		int listCount = productService.listCount();
		int currentPage = 1;
		int pageLimit = 10;
		int boardLimit = 20;
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit);
		ArrayList<Product> pList = productService.productList(pi, typeNo);
		mv.addObject("typeNo", typeNo).addObject("pi", pi).addObject("pList", pList).setViewName("products/products");
		return mv;
	}

	// 필터
	@ResponseBody
	@RequestMapping(value = "filter/list/select.pr", produces = "application/json; charset=utf-8")
	public String filterSearch(Filter f) {
		int listCount = productService.selectProductCount(f);
		int currentPage = 1;
		int pageLimit = 10;
		int boardLimit = 10;
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit);
		ArrayList<Product> pList = productService.selectProductList(pi, f);
		ArrayList<ProductAttachment> atList = new ArrayList<>();
		if (pList.size() > 0) {
			int[] productNo = new int[pList.size()];
			for (int i = 0; i < productNo.length; i++) {
				productNo[i] = pList.get(i).getProductNo();
			}
			atList = productService.selectProductAttachmentList(productNo);
		}
		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<>();
		map.put("pi", pi);
		map.put("p", pList);
		map.put("at", atList);
		return gson.toJson(map);
	}
}
