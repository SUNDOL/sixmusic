package com.kh.sixmusic.order.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.TotalOrder;

@Repository
public class OrderDao {

	public int insertTotal(SqlSessionTemplate sqlSession, TotalOrder to) {
		return 0;
	}

	public ArrayList<Cart> selectCart(int[] cartNo) {
		return null;
	}

	public int selectOrderNo(SqlSessionTemplate sqlSession, int memberNo) {
		return 0;
	}

}
