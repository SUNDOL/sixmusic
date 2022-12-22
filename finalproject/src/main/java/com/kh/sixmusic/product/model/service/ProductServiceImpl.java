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
	public int listCount() {
		return productDao.listCount(sqlSession);
	}

	@Override
	public ArrayList<Product> productList(PageInfo pi, int typeNo) {
		return productDao.productList(sqlSession, pi, typeNo);
	}

	@Override
	public int selectProductCount(Filter f) {
		return productDao.selectProductCount(sqlSession,f);
	}
	@Override
	public ArrayList<Product> selectProductList(PageInfo pi, Filter f) {
		return productDao.selectProductList(sqlSession,pi,f);
	}
	@Override
	public ArrayList<ProductAttachment> selectProductAttachmentList(int[] productNo) {
		
		return productDao.selectProductAttachmentList(sqlSession,productNo);
	}
	@Override
	public ArrayList<Product> selectProductList(PageInfo pi) {
		return null;
	}
	@Override
	public ArrayList<Review> Review(int productNo) {
		return null;
	}
	@Override
	public ArrayList<ReviewAttachment> selectReviewAttachmentList(int productNo) {
		return null;
	}
	@Override
	public Product selectProduct(int productNo) {
		return null;
	}
	@Override
	public Review selectReview(int reviewNo) {
		return null;
	}
	@Override
	public ReviewAttachment selectReviewAttachment(int reviewNo) {
		return null;
	}
}
