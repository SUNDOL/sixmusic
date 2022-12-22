package com.kh.sixmusic.data.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.data.model.dao.DataDao;
import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Price;
import com.kh.sixmusic.data.model.vo.Type;

@Service
public class DataServiceImpl implements DataService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DataDao dataDao;
	@Override
	public ArrayList<Brand> selectBrand(Filter f) {
		return dataDao.selectBrand(sqlSession, f);
	}
	@Override
	public ArrayList<Model> selectModel(Filter f) {
		return dataDao.selectModel(sqlSession, f);
	}
	@Override
	public ArrayList<Price> selectPrice(Filter f) {
		return dataDao.selectPrice(sqlSession,f);
	}
}
