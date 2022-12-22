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

@Controller
public class DataController {
	@Autowired
	private DataService dataService;
	
	@ResponseBody
	@RequestMapping("filter/list/select.da")
	public String selectPrice(Filter f){
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
	
}
