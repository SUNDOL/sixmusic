package com.kh.sixmusic.admin.model.service;

import java.util.ArrayList;

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



}
