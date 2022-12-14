package com.kh.sixmusic.data.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.data.model.dao.DataDao;

@Service
public class DataServiceImpl implements DataService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DataDao dataDao;
}
