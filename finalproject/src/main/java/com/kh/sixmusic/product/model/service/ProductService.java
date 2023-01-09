package com.kh.sixmusic.product.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

public interface ProductService {
	ArrayList<Product> productList(Filter f, PageInfo pi);

	int listCount(Filter f);

	Product productDetails(int productNo);

	ArrayList<ProductAttachment> productPics(int productNo);

	ArrayList<ProductAttachment> productColors(int productNo);

	ArrayList<Review> productReviewList(int productNo);

	Review reviewDetails(int reviewNo);

	ReviewAttachment reviewDetailsPic(int reviewNo);

	ArrayList<Product> groupAdmin(Filter f);

	ArrayList<Product> productAdmin(Integer groupNo);

	Product detailAdmin(Integer productNo);

	ArrayList<Product> bestSellers();

	ArrayList<Product> newArrivals();

}
