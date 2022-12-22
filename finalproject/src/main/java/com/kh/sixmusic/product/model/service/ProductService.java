package com.kh.sixmusic.product.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

public interface ProductService {
	int listCount();
	ArrayList<Product> productList(PageInfo pi, int typeNo);
	
	int selectProductCount(Filter f);
	
	ArrayList<Product> selectProductList(PageInfo pi, Filter f);
	ArrayList<Product> selectProductList(PageInfo pi);
	ArrayList<ProductAttachment> selectProductAttachmentList(int[] productNo);
	
	ArrayList<Review> Review(int productNo);
	ArrayList<ReviewAttachment> selectReviewAttachmentList(int productNo);
	
	Product selectProduct(int productNo);
	Review selectReview(int reviewNo);
	ReviewAttachment selectReviewAttachment(int reviewNo);

}
