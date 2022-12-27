package com.kh.sixmusic.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.dao.ProductDao;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

@Service
public class ProductServiceImpl implements ProductService {
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

	@Override
	public Product productDetails(int productNo) {
		return productDao.productDetails(sqlSession, productNo);
	}

	@Override
	public ArrayList<ProductAttachment> productPics(int productNo) {
		return productDao.productPics(sqlSession, productNo);
	}

	@Override
	public ArrayList<ProductAttachment> productColors(int productNo) {
		return productDao.productColors(sqlSession, productNo);
	}

	@Override
	public ArrayList<Review> productReviewList(int productNo) {
		return productDao.productReviewList(sqlSession, productNo);
	}

	@Override
	public Review reviewDetails(int reviewNo) {
		return productDao.reviewDetails(sqlSession, reviewNo);
	}

	@Override
	public ReviewAttachment reviewDetailsPic(int reviewNo) {
		return productDao.reviewDetailsPic(sqlSession, reviewNo);
	}

}
