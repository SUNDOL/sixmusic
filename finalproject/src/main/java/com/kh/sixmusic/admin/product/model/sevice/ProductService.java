package com.kh.sixmusic.admin.product.model.sevice;

import java.util.ArrayList;

import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

public interface ProductService {

	int addToProduct(Product p);

	int addToProductImage(ArrayList<ProductAttachment> patList);

}
