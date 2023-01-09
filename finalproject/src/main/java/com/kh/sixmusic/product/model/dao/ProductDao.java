package com.kh.sixmusic.product.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

@Repository
public class ProductDao {

	public int listCount(SqlSessionTemplate sqlSession, Filter f) {
		return sqlSession.selectOne("productMapper.listCount", f);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> productList(SqlSessionTemplate sqlSession, Filter f, PageInfo pi) {
		return (ArrayList) sqlSession.selectList("productMapper.productList", f, pi.getRowBounds());
	}

	public Product productDetails(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.selectOne("productMapper.productDetails", productNo);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<ProductAttachment> productPics(SqlSessionTemplate sqlSession, int productNo) {
		return (ArrayList) sqlSession.selectList("productMapper.productPics", productNo);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<ProductAttachment> productColors(SqlSessionTemplate sqlSession, int productNo) {
		return (ArrayList) sqlSession.selectList("productMapper.productColors", productNo);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Review> productReviewList(SqlSessionTemplate sqlSession, int productNo) {
		return (ArrayList) sqlSession.selectList("productMapper.productReviewList", productNo);
	}

	public Review reviewDetails(SqlSessionTemplate sqlSession, int reviewNo) {
		return sqlSession.selectOne("productMapper.reviewDetails", reviewNo);
	}

	public ReviewAttachment reviewDetailsPic(SqlSessionTemplate sqlSession, int reviewNo) {
		return sqlSession.selectOne("productMapper.reviewDetailsPic", reviewNo);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> groupAdmin(SqlSessionTemplate sqlSession, Filter f) {
		return (ArrayList) sqlSession.selectList("productMapper.groupAdmin", f);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> productAdmin(SqlSessionTemplate sqlSession, Integer groupNo) {
		return (ArrayList) sqlSession.selectList("productMapper.productAdmin", groupNo);
	}

	public Product detailAdmin(SqlSessionTemplate sqlSession, Integer productNo) {
		return sqlSession.selectOne("productMapper.detailAdmin", productNo);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> bestSellers(SqlSessionTemplate sqlSession) {
		return (ArrayList) sqlSession.selectList("productMapper.bestSellers");
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> newArrivals(SqlSessionTemplate sqlSession) {
		return (ArrayList) sqlSession.selectList("productMapper.newArrivals");
	}

}
