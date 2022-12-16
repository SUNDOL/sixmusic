package com.kh.sixmusic.order.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.order.model.vo.Wishlist;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

public interface OrderService {
	ArrayList<Product> selectCartProduct(int memberNo);
	ArrayList<ProductAttachment> selectCartAttachment(int memberNo);
	int insertCart(Cart c);
	int deleteCart(int cartNo);
	ArrayList<ProductAttachment> selectWishlistAttachment(int memberNo);
	int insertWishlist(Wishlist w);
	int deleteWishlist(Wishlist w);
	ArrayList<Product> seletOrderProduct(int[] cartNo);
	int insertOrderDate(TotalOrder to, int[] cartNo);
	void updateOrderData(int memberNo);
	void deleteOrderData(int memberNo);
	
	ArrayList<TotalOrder> SelectTotalOrder(int memberNo);
	ArrayList<Product> SelectProductOrder(int orderNo);
}
