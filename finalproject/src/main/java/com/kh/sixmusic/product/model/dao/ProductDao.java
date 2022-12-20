package com.kh.sixmusic.product.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Repository
public class ProductDao {

	public int selectProductCount(SqlSessionTemplate sqlSession, Filter f) {
		return 0;
	}

	public ArrayList<Product> selectProductList(SqlSessionTemplate sqlSession, PageInfo pi, Filter f) {
		return null;
	}

	public ArrayList<ProductAttachment> selectProductAttachmentList(SqlSessionTemplate sqlSession,
			ArrayList<Product> pList) {
		return null;
	}

}
