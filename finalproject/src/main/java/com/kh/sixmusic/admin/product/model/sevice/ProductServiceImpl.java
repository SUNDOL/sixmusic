package com.kh.sixmusic.admin.product.model.sevice;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Service
public class ProductServiceImpl implements ProductService{

	@Override
	public int addToProduct(Product p) {
		return 0;
	}

	@Override
	public int addToProductImage(ArrayList<ProductAttachment> patList) {
		return 0;
	}

}
