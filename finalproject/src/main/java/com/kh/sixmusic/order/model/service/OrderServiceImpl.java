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

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private OrderDao orderDao;

	@Override
	public int insertOrder(TotalOrder to,int[] cartNo) {
		
		int result = orderDao.insertTotal(sqlSession,to);
		if (result>0) {
			
			ArrayList<ProductOrder> poList = new ArrayList<ProductOrder>();
			int orderNo = orderDao.selectOrderNo(sqlSession,to.getMemberNo());
			ArrayList<Cart> cList = orderDao.selectCart(cartNo);
			for (Cart c : cList) {
				poList.add(new ProductOrder(orderNo, c.getProductNo(), c.getQuantity()));
			}
		}
		return result;
	}

	@Override
	public int insertCart(Cart c) {
		return 0;
	}

	@Override
	public int deleteCart(int cartNo) {
		return 0;
	}

	@Override
	public int updateOrder(int memberNo) {
		return 0;
	}

	@Override
	public ArrayList<Product> seletProductList(int[] cartNo) {
		return null;
	}

	@Override
	public ArrayList<Product> SelectOrder(int orderNo) {
		return null;
	}

	@Override
	public ArrayList<Cart> seletCartList(int[] cartNo) {
		return null;
	}

	@Override
	public int SelectOrderNo(int memberNo) {
		return 0;
	}

	@Override
	public int insertWishlist(Wishlist w) {
		return 0;
	}

	@Override
	public int deleteWishlist(Wishlist w) {
		return 0;
	}

	@Override
	public int deleteOrder(int memberNo) {
		return 0;
	}
}
