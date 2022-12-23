package com.kh.sixmusic.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Repository
public class ProductDao {
	
	public int listCount(SqlSessionTemplate sqlSession, Filter f) {
		return sqlSession.selectOne("productMapper.listCount", f);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> productList(SqlSessionTemplate sqlSession, Filter f, PageInfo pi) {
		return (ArrayList) sqlSession.selectList("productMapper.productList", f, pi.getRowBounds());
	}




}
