package com.kh.sixmusic.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.admin.model.dao.AdminDao;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDao AdminDao;

	@Override
	public int addToProduct(Product p) {
		int result = AdminDao.addToProduct(sqlSession, p);
		if (result > 0) {
			return AdminDao.selectSeqProduct(sqlSession);
		}
		return result;
	}

	@Override
	public int addToProductImage(ArrayList<ProductAttachment> patList) {
		return AdminDao.addToProduct(sqlSession, patList);
	}

	@Override
	public int removeProduct(int productNo) {
		return AdminDao.removeProduct(sqlSession, productNo);
	}

}
