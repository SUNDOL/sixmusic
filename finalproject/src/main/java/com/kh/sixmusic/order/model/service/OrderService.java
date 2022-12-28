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
	
	ArrayList<Product> showConfirmationInfo(int memberNo);
	
	int uploadOrderData(int memberNo);
	Product selectOrderCart(int memberNo);

	
}
