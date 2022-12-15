package com.kh.sixmusic.data.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.data.model.dao.DataDao;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Price;

@Service
public class DataServiceImpl implements DataService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DataDao dataDao;
	@Override
	public ArrayList<Category> selectCategory() {
		return dataDao.selectCategory(sqlSession);
	}
	@Override
	public ArrayList<Price> selectPrice() {
		return dataDao.selectPrice(sqlSession);
	}
}
