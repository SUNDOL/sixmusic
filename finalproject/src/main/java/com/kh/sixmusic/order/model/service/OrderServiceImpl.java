package com.kh.sixmusic.order.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.order.model.dao.OrderDao;
import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Product;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private OrderDao orderDao;
	@Override
	public int insertCart(Cart c) {
		return 0;
	}
	@Override
	public int deleteCart(int cartNo) {
		return 0;
	}
	@Override
	public ArrayList<Cart> seletcCartList(int[] cartNo) {
		return null;
	}
	@Override
	public int insertTotal(TotalOrder to) {
		return 0;
	}
	@Override
	public int insertOrder(ArrayList<ProductOrder> list) {
		return 0;
	}
	@Override
	public ArrayList<Product> SelectOrder(int orderNo) {
		return null;
	}
}
