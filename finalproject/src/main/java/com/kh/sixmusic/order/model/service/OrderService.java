package com.kh.sixmusic.order.model.service;

import java.util.ArrayList;
import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.order.model.vo.Wishlist;
import com.kh.sixmusic.product.model.vo.Product;

public interface OrderService {
	int insertCart(Cart c);
	int deleteCart(int cartNo);
	int insertOrder(TotalOrder to,int[] cartNo);
	int updateOrder(int memberNo);
	int deleteOrder(int memberNo);
	ArrayList<Product> seletProductList(int[] cartNo);
	ArrayList<Product> SelectOrder(int orderNo);
	ArrayList<Cart> seletCartList(int[] cartNo);
	int SelectOrderNo(int memberNo);
	int insertWishlist(Wishlist w);
	int deleteWishlist(Wishlist w);
}
