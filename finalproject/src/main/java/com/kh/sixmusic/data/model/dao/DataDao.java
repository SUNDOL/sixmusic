package com.kh.sixmusic.data.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Price;
import com.kh.sixmusic.data.model.vo.Type;

@Repository
public class DataDao {
	
	public ArrayList<Category> selectCategory(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dataMapper.selectCategory");
	}

	public ArrayList<Price> selectPrice(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dataMapper.selectPrice");
	}

	public ArrayList<Type> selectType(SqlSessionTemplate sqlSession, int categoryNo) {
		return  (ArrayList)sqlSession.selectList("dataMapper.selectType",categoryNo);
	}

	public ArrayList<Brand> selectBrand(SqlSessionTemplate sqlSession, int typeNo) {
		return  (ArrayList)sqlSession.selectList("dataMapper.selectBrand",typeNo);
	}

	public ArrayList<Model> selectModel(SqlSessionTemplate sqlSession, int brandNo) {
		return  (ArrayList)sqlSession.selectList("dataMapper.selectModel",brandNo);
	}

}
