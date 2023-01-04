package com.kh.sixmusic.admin.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Type;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

public interface AdminService {

	int addToProduct(Product p);

	int addToProductImage(ArrayList<ProductAttachment> patList);

	int removeProduct(int productNo);

	int removeMember(int memberNo);

	int grandPoint(Member m);

	int modifyMemberGrade(Member m);

	ArrayList<Category> selectAllCategory();

	ArrayList<Brand> selectAllBrand();

	ArrayList<Type> selectAllType();

	ArrayList<Product> selectAllProduct();

	ArrayList<Model> selectAllModel();

	int addToBrand(String brand);

	int addToModel(Model m);

	int modiBrand(Brand b);

	int modiModel(Model m);

	ArrayList<Model> selectModel(int brandNo);



}
