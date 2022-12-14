package com.kh.sixmusic.product.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.data.model.vo.Filter;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

public interface ProductService {
	
	ArrayList<Product> selectProductList(PageInfo pi, Filter f);
	ArrayList<ProductAttachment> selectProductAttachmentList(PageInfo pi);
	
	Product selectProduct(int productNo);
	ArrayList<Review> Review(int productNo);
	ArrayList<ReviewAttachment> selectReviewAttachmentList(int productNo);
	
	Review selectReview(int reviewNo);
	ReviewAttachment selectReviewAttachment(int reviewNo);
}
