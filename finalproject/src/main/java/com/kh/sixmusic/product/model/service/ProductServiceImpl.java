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
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ProductDao productDao;
	@Override
	public ArrayList<ProductAttachment> selectProductAttachmentList(PageInfo pi) {
		return null;
	}
	@Override
	public Product selectProduct(int productNo) {
		return null;
	}
	@Override
	public ArrayList<com.kh.sixmusic.product.model.vo.Review> Review(int productNo) {
		return null;
	}
	@Override
	public ArrayList<ReviewAttachment> selectReviewAttachmentList(int productNo) {
		return null;
	}
	@Override
	public com.kh.sixmusic.product.model.vo.Review selectReview(int reviewNo) {
		return null;
	}
	@Override
	public ReviewAttachment selectReviewAttachment(int reviewNo) {
		return null;
	}
	@Override
	public ArrayList<Product> selectProductList(PageInfo pi, Filter f) {
		return null;
	}
}