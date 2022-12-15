package com.kh.sixmusic.data.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Price;

@Repository
public class DataDao {
	
	public ArrayList<Category> selectCategory(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dataMapper.selectCategory");
	}

	public ArrayList<Price> selectPrice(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dataMapper.selectPrice");
	}

}
