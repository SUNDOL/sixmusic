package com.kh.sixmusic.product.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.vo.Product;

public interface ProductService {
	ArrayList<Product> productList(Filter f, PageInfo pi);
	int listCount(Filter f);

}
