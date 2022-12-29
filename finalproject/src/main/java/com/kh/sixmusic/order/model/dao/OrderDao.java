package com.kh.sixmusic.order.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.order.model.vo.Wishlist;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Repository
public class OrderDao {

	public int checkCart(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.selectOne("orderMapper.checkCart", c);
	}

	public int addToCart(SqlSessionTemplate sqlSession, Cart c) {
		return sqlSession.insert("orderMapper.addToCart", c);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Cart> showCart(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList) sqlSession.selectList("orderMapper.showCart", memberNo);
	}

	public int removeCart(SqlSessionTemplate sqlSession, int cartNo) {
		return sqlSession.delete("orderMapper.removeCart", cartNo);
	}

	public int checkWishlist(SqlSessionTemplate sqlSession, Wishlist w) {
		return sqlSession.selectOne("orderMapper.checkWishlist", w);
	}

	public int addToWishlist(SqlSessionTemplate sqlSession, Wishlist w) {
		return sqlSession.insert("orderMapper.addToWishlist", w);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> showWishlist(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList) sqlSession.selectList("orderMapper.showWishlist", memberNo);
	}

	public int removeWishlist(SqlSessionTemplate sqlSession, Wishlist w) {
		return sqlSession.delete("orderMapper.removeWishlist", w);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> showConfirmationInfo(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList) sqlSession.selectList("orderMapper.showConfirmationInfo", memberNo);
	}

	public int insertTotalOrder(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.insert("orderMapper.insertTotalOrder", memberNo);
	}

	public int insertPoudctOrder(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.insert("orderMapper.insertPoudctOrder", memberNo);
	}

	public int updateProductQuantity(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.delete("orderMapper.updateProductQuantity", memberNo);
	}

	public int deleteCart(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.delete("orderMapper.deleteCart", memberNo);
	}
	public int minusPoint(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("orderMapper.minusPoint", m);
	}
	public int plusPoint(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("orderMapper.plusPoint", m);
	}
	
	public Product selectOrderCart(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("orderMapper.selectOrderCart", memberNo);
	}




}
