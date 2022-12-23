package com.kh.sixmusic.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.dao.ProductDao;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;


@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ProductDao productDao;
	@Override
	public ArrayList<Product> productList(Filter f, PageInfo pi) {
		return productDao.productList(sqlSession, f, pi);
	}
	@Override
	public int listCount(Filter f) {
		return productDao.listCount(sqlSession, f);
	}
	
}
