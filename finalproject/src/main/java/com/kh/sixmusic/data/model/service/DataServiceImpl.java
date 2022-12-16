package com.kh.sixmusic.data.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.data.model.dao.DataDao;
import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
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
	public ArrayList<Category> selectCategory() {
		return dataDao.selectCategory(sqlSession);
	}
	@Override
	public ArrayList<Price> selectPrice() {
		return dataDao.selectPrice(sqlSession);
	}
	@Override
	public ArrayList<Type> selectType(int categoryNo) {
		return dataDao.selectType(sqlSession, categoryNo);
	}
	@Override
	public ArrayList<Brand> selectBrand(int typeNo) {
		return dataDao.selectBrand(sqlSession, typeNo);
	}
	@Override
	public ArrayList<Model> selectModel(int brandNo) {
		return dataDao.selectModel(sqlSession, brandNo);
	}
}
