package com.kh.sixmusic.data.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Price;

public interface DataService {

	ArrayList<Category> selectCategory();

	ArrayList<Price> selectPrice();

}
