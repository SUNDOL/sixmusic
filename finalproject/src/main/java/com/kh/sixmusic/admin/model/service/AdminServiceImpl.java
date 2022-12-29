package com.kh.sixmusic.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int addToProduct(Product p) {
		return 0;
	}

	@Override
	public int addToProductImage(ArrayList<ProductAttachment> patList) {
		return 0;
	}

}
