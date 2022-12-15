package com.kh.sixmusic.order.model.service;

import java.util.ArrayList;
import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.order.model.vo.Wishlist;
import com.kh.sixmusic.product.model.vo.Product;

public interface OrderService {
	int insertCart(Cart c);
	int deleteCart(int cartNo);
	int insertTotalOrder(TotalOrder to,int[] cartNo);
	ArrayList<Product> seletOrderProduct(int[] cartNo);
	ArrayList<TotalOrder> SelectTotalOrder();
	ArrayList<Product> SelectProductOrder(int orderNo);
	int insertWishlist(Wishlist w);
	int deleteWishlist(Wishlist w);
	void updateOrderData(int memberNo);
	void deleteOrderData(int memberNo);
}
