package com.kh.sixmusic.data.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.sixmusic.data.model.service.DataService;
import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Price;
import com.kh.sixmusic.data.model.vo.Type;

@Controller
public class DataController {
	@Autowired
	private DataService dataService;
	
	@ResponseBody
	@RequestMapping("catrgory/list/select.da")
	public String selectCategory(){
		ArrayList<Category> list = dataService.selectCategory();
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping("price/list/select.da")
	public String selectPrice(){
		ArrayList<Price> list = dataService.selectPrice();
		return new Gson().toJson(list);
	}
	
	@ResponseBody
	@RequestMapping("type/list/select.da")
	public String selectType(int categoryNo){
		ArrayList<Type> list = dataService.selectType(categoryNo);
		return new Gson().toJson(list);
	}
	@ResponseBody
	@RequestMapping("brand/list/select.da")
	public String selectBrand(Filter f){
		ArrayList<Brand> list = dataService.selectBrand(f);
		return new Gson().toJson(list);
	}
	@ResponseBody
	@RequestMapping("model/list/select.da")
	public String selectModel(Filter f){
		ArrayList<Model> list = dataService.selectModel(f);
		return new Gson().toJson(list);
	}
}
