package com.kh.sixmusic.order.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.order.model.dao.OrderDao;
import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.order.model.vo.Wishlist;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private OrderDao orderDao;

	@Override
	public int checkCart(Cart c) {
		return orderDao.checkCart(sqlSession, c);
	}

	@Override
	public int addToCart(Cart c) {
		return orderDao.addToCart(sqlSession, c);
	}

	@Override
	public ArrayList<Cart> showCart(int memberNo) {
		return orderDao.showCart(sqlSession, memberNo);
	}

	@Override
	public int removeCart(int cartNo) {
		return orderDao.removeCart(sqlSession, cartNo);
	}

	@Override
	public int checkWishlist(Wishlist w) {
		return orderDao.checkWishlist(sqlSession, w);
	}

	@Override
	public int addToWishlist(Wishlist w) {
		return orderDao.addToWishlist(sqlSession, w);
	}

	@Override
	public ArrayList<Product> showWishlist(int memberNo) {
		return orderDao.showWishlist(sqlSession, memberNo);
	}

	@Override
	public int removeWishlist(Wishlist w) {
		return orderDao.removeWishlist(sqlSession, w);
	}

	@Override
	public int uploadOrderData(int memberNo) {
		int result = orderDao.insertTotalOrder(sqlSession, memberNo);
		result += orderDao.insertPoudctOrder(sqlSession, memberNo);
		result += orderDao.updateProductQuantity(sqlSession, memberNo);
		result += orderDao.deleteCart(sqlSession, memberNo);
		if (result > 3) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		return result;
	}

	@Override
	public Product selectOrderCart(int memberNo) {
		return orderDao.selectOrderCart(sqlSession, memberNo);
	}

	@Override
	public ArrayList<Product> showConfirmationInfo(int memberNo) {
		return orderDao.showConfirmationInfo(sqlSession, memberNo);
	}

}
