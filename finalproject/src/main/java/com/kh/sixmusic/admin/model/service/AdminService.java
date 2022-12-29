package com.kh.sixmusic.admin.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

public interface AdminService {

	int addToProduct(Product p);

	int addToProductImage(ArrayList<ProductAttachment> patList);

}
