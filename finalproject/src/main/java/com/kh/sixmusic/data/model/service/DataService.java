package com.kh.sixmusic.data.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Price;
import com.kh.sixmusic.data.model.vo.Type;

public interface DataService {

	ArrayList<Category> selectCategory();

	ArrayList<Price> selectPrice();

	ArrayList<Type> selectType(int categoryNo);

	ArrayList<Brand> selectBrand(int typeNo);

	ArrayList<Model> selectModel(int brandNo);

}
