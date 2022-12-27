package com.kh.sixmusic.order.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.order.model.vo.Cart;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.order.model.vo.Wishlist;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

public interface OrderService {
	int checkCart(Cart c);
	int addToCart(Cart c);
	ArrayList<Cart> showCart(int memberNo);
	int removeCart(int cartNo);
	

	int checkWishlist(Wishlist w);
	int addToWishlist(Wishlist w);
	ArrayList<Product> showWishlist(int memberNo);
	int removeWishlist(Wishlist w);

	//-----------------절취선-------------------
	ArrayList<Product> selectCartProduct(int memberNo);
	ArrayList<ProductAttachment> selectCartAttachment(int memberNo);
	ArrayList<Product> seletOrderProduct(int[] cartNo);
	int insertOrderDate(TotalOrder to, int[] cartNo);
	void updateOrderData(int memberNo);
	void deleteOrderData(int memberNo);
	
	ArrayList<TotalOrder> SelectTotalOrder(int memberNo);
	ArrayList<Product> SelectProductOrder(int orderNo);

	
}
