package com.kh.sixmusic.order.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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
		return (ArrayList)sqlSession.selectList("orderMapper.showCart", memberNo);
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
		return (ArrayList)sqlSession.selectList("orderMapper.showWishlist", memberNo);
	}
	
	public int removeWishlist(SqlSessionTemplate sqlSession, Wishlist w) {
		return sqlSession.delete("orderMapper.removeWishlist", w);
	}
	

	//-----------------절취선-------------------
	public int selectOrderNo(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("orderMapper.selectOrderNo", memberNo);
	}

	public ArrayList<Product> seletOrderProduct(SqlSessionTemplate sqlSession, int[] cartNo) {
		return (ArrayList) sqlSession.selectList("orderMapper.seletOrderProduct", cartNo);
	}

	public ArrayList<Cart> selectOrderCart(SqlSessionTemplate sqlSession, int[] cartNo) {
		return (ArrayList) sqlSession.selectList("orderMapper.selectOrderCart", cartNo);
	}

	public void deleteOrderCart(SqlSessionTemplate sqlSession, int memberNo) {
		sqlSession.delete("orderMapper.deleteOrderCart", memberNo);
	}

	public int insertTotalOrder(SqlSessionTemplate sqlSession, TotalOrder to) {
		return sqlSession.insert("orderMapper.insertTotalOrder", to);
	}

	public void updateTotalOrder(SqlSessionTemplate sqlSession, int memberNo) {
		sqlSession.update("orderMapper.updateTotalOrder", memberNo);
	}

	public void deleteTotalOrder(SqlSessionTemplate sqlSession, int memberNo) {
		sqlSession.delete("orderMapper.deleteTotalOrder", memberNo);
	}

	public void insertProductOrder(SqlSessionTemplate sqlSession, ArrayList<ProductOrder> list) {
		sqlSession.insert("orderMapper.insertProductOrder", list);
	}

	public void deleteProductOrder(SqlSessionTemplate sqlSession, int memberNo) {
		sqlSession.delete("orderMapper.deleteProductOrder", memberNo);
	}









}
