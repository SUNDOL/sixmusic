package com.kh.sixmusic.data.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Price;
import com.kh.sixmusic.data.model.vo.Type;

public interface DataService {
	
	ArrayList<Brand> selectBrand(Filter f);

	ArrayList<Model> selectModel(Filter f);

	ArrayList<Price> selectPrice(Filter f);

}
