package com.kh.sixmusic.order.model.service;

import java.util.ArrayList;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
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
	public int insertOrderDate(TotalOrder to, int[] cartNo) {

		int result = orderDao.insertTotalOrder(sqlSession, to);
		if (result > 0) {
			// 주문내역 리스트 데이터 입력
			int orderNo = orderDao.selectOrderNo(sqlSession, to.getMemberNo());
			ArrayList<Cart> cList = orderDao.selectOrderCart(sqlSession, cartNo);
			ArrayList<ProductOrder> poList = new ArrayList<ProductOrder>();
			for (Cart c : cList) {
				poList.add(new ProductOrder(orderNo, c.getProductNo(), c.getQuantity()));
			}
			orderDao.insertProductOrder(sqlSession, poList);

		}
		return result;
	}

	@Override
	public ArrayList<Product> seletOrderProduct(int[] cartNo) {
		return orderDao.seletOrderProduct(sqlSession, cartNo);
	}

	@Override
	public void updateOrderData(int memberNo) {
		orderDao.updateTotalOrder(sqlSession, memberNo);
		orderDao.deleteOrderCart(sqlSession, memberNo);
	}

	@Override
	public void deleteOrderData(int memberNo) {
		orderDao.deleteProductOrder(sqlSession, memberNo);
		orderDao.deleteTotalOrder(sqlSession, memberNo);
	}

	@Override
	public ArrayList<ProductAttachment> selectWishlistAttachment(int memberNo) {
		return orderDao.selectWishlistAttachment(sqlSession, memberNo);
	}

	@Override
	public int insertWishlist(Wishlist w) {
		return orderDao.insertWishlist(sqlSession, w);
	}

	@Override
	public int deleteWishlist(Wishlist w) {
		return orderDao.deleteWishlist(sqlSession, w);
	}

	@Override
	public ArrayList<Product> selectCartProduct(int memberNo) {
		return orderDao.selectCartProduct(sqlSession, memberNo);
	}

	@Override
	public ArrayList<ProductAttachment> selectCartAttachment(int memberNo) {
		return orderDao.selectCartAttachment(sqlSession, memberNo);
	}

	@Override
	public int insertCart(Cart c) {
		return orderDao.insertCart(sqlSession, c);
	}

	@Override
	public int deleteCart(int cartNo) {
		return orderDao.deleteCart(sqlSession, cartNo);
	}

	@Override
	public ArrayList<TotalOrder> SelectTotalOrder(int membetno) {
		return null;
	}

	@Override
	public ArrayList<Product> SelectProductOrder(int orderNo) {
		return null;
	}

}
