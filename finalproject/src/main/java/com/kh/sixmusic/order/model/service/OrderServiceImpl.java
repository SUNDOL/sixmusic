package com.kh.sixmusic.order.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.order.model.dao.OrderDao;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private OrderDao orderDao;
}
