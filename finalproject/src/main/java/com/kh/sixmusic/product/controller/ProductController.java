package com.kh.sixmusic.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.service.ProductService;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@ResponseBody
	@RequestMapping(value = "filter/list/select.pr", produces = "application/json; charset=utf-8")
	public String filterSearch(Filter f) {
		int listCount = productService.selectProductCount(f);
		int currentPage = 1;
		int pageLimit = 10;
		int boardLimit = 10;
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit);
		ArrayList<Product> pList = productService.selectProductList(pi, f);
		ArrayList<ProductAttachment> atList = productService.selectProductAttachmentList(pList);
		Gson gson = new Gson();
		JsonObject jMap = new JsonObject();
		jMap.addProperty("pi", gson.toJson(pi));
		jMap.addProperty("pList", gson.toJson(pList));
		jMap.addProperty("atList", gson.toJson(atList));
		return jMap.toString();
	}
}
