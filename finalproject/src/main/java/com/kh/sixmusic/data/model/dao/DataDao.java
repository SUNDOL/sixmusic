package com.kh.sixmusic.data.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Price;
import com.kh.sixmusic.data.model.vo.Type;

@Repository
public class DataDao {
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Category> selectCategory(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dataMapper.selectCategory");
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Price> selectPrice(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dataMapper.selectPrice");
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Type> selectType(SqlSessionTemplate sqlSession, int categoryNo) {
		return  (ArrayList)sqlSession.selectList("dataMapper.selectType",categoryNo);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Brand> selectBrand(SqlSessionTemplate sqlSession, Filter f) {
		return  (ArrayList)sqlSession.selectList("dataMapper.selectBrand",f);
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Model> selectModel(SqlSessionTemplate sqlSession, Filter f) {
		return  (ArrayList)sqlSession.selectList("dataMapper.selectModel",f);
	}

}
