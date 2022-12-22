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
	
	public int listCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("productMapper.listCount");
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> productList(SqlSessionTemplate sqlSession, PageInfo pi, int typeNo) {
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		ArrayList<Product> list = (ArrayList) sqlSession.selectList("productMapper.productList", typeNo, rowBounds);
		return list;
	}

	public int selectProductCount(SqlSessionTemplate sqlSession, Filter f) {
		return sqlSession.selectOne("productMapper.filterCount",f);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> selectProductList(SqlSessionTemplate sqlSession, PageInfo pi, Filter f) {
		return (ArrayList)sqlSession.selectList("productMapper.selectProductList",f,pi.getRowBounds());
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<ProductAttachment> selectProductAttachmentList(SqlSessionTemplate sqlSession,
			int[] productNo) {
		return (ArrayList)sqlSession.selectList("productMapper.selectProductAttachmentList",productNo);
	}



}
