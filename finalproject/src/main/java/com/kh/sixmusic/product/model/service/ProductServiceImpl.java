package com.kh.sixmusic.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.product.model.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ProductDao productDao;
}
