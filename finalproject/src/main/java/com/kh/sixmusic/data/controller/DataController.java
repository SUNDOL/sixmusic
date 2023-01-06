package com.kh.sixmusic.data.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import com.kh.sixmusic.data.model.service.DataService;
import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Price;
import com.kh.sixmusic.data.model.vo.Type;

@Controller
public class DataController {
	@Autowired
	private DataService dataService;
	
	@ResponseBody
	@RequestMapping(value = "filter.da", produces = "application/json; charset=utf-8")
	public String filter(Filter f){
		ArrayList<Brand> brand = dataService.selectBrand(f);
		ArrayList<Model> model = dataService.selectModel(f);
		ArrayList<Price> price = dataService.selectPrice(f);
		Gson gson = new Gson();
		HashMap<String, Object> map = new HashMap<>();
		map.put("brand", brand);
		map.put("price", price);
		map.put("model", model);
		return gson.toJson(map);
	}
	@ResponseBody
	@RequestMapping(value = "type.da", produces = "application/json; charset=utf-8")
	public String selectType(Filter f){
		ArrayList<Type> type = dataService.selectAdminType(f);
		Gson gson = new Gson();
		return gson.toJson(type);
	}

	@ResponseBody
	@RequestMapping(value = "brand.da", produces = "application/json; charset=utf-8")
	public String selectBrand(){
		ArrayList<Brand> brand = dataService.selectAdminBrand();
		Gson gson = new Gson();
		return gson.toJson(brand);
	}
	
	@ResponseBody
	@RequestMapping(value = "model.da", produces = "application/json; charset=utf-8")
	public String selectProduct(Filter f){
		ArrayList<Model> model = dataService.selectAdminModel(f);
		Gson gson = new Gson();
		return gson.toJson(model);
	}
}
