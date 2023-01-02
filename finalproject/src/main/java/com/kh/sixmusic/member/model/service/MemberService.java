package com.kh.sixmusic.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

public interface MemberService {
	Member loginMember(Member m);
	int nicknameCheck(String memberNickname);
	int signUpMember(Member m);
	int idCheck(String MemberId);
	
	ArrayList<TotalOrder> viewTotalOrder(HashMap<String, Object> map);
	ArrayList<Product> viewProductOrder(int memberNo, PageInfo pi);
	
	int updateMemberPwd(Member m);
	int updateAccount(Member m);
	int deleteMember(int memberNo);
	
	int addToReview(Review r, ReviewAttachment rat);
	int removeReview(Review r);
	ArrayList<TotalOrder> viewLastTotalOrder(int memberNo);
	ArrayList<Product> viewLastProductOrder(int memberNo);
	int orderListCount(int memberNo);
	
	

}
