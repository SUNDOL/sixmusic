package com.kh.sixmusic.order.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Product;

public interface OrderService {
	int insertCart(Cart c);
	int deleteCart(int cartNo);
	ArrayList<Cart> seletcCartList(int[] cartNo);
	int insertTotal(TotalOrder to);
	int insertOrder(ArrayList<ProductOrder> list);
	ArrayList<Product> SelectOrder(int orderNo);
}
