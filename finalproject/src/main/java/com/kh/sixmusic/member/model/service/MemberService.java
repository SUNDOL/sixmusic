package com.kh.sixmusic.member.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

public interface MemberService {
	Member loginMember(Member m);
	int nicknameCheck(String memberNickname);
	int signUpMember(Member m);
	int idCheck(String MemberId);
	
	ArrayList<TotalOrder> viewTotalOrder(int memberNo);
	ArrayList<ProductOrder> viewProductOrder(int memberNo);
	
	int updateAccount(Member m);
	int updateMemberPwd(Member m);
	int addToReview(Review r, ReviewAttachment rat);
	int removeReview(Review r);
	
	

}
