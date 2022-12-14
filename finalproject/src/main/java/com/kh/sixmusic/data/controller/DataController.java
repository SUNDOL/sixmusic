package com.kh.sixmusic.data.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.sixmusic.data.model.service.DataService;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Price;

@Controller
public class DataController {
	@Autowired
	private DataService dataService;
	
	@ResponseBody
	@RequestMapping("catrgory.da")
	public String selectCategory(){
		ArrayList<Category> list = dataService.selectCategory();
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping("price.da")
	public String selectPrice(){
		ArrayList<Price> list = dataService.selectPrice();
		return new Gson().toJson(list);
	}
}
