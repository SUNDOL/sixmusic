package com.kh.sixmusic.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.member.model.dao.MemberDao;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao memberDao;

	@Override
	public Member loginMember(Member m) {
		return memberDao.loginMember(sqlSession, m);
	}

	@Override
	public int nicknameCheck(String memberNickname) {
		return memberDao.nicknameCheck(sqlSession, memberNickname);
	}

	@Override
	public int idCheck(String MemberId) {
		return memberDao.idCheck(sqlSession, MemberId);
	}

	@Override
	public int signUpMember(Member m) {
		return memberDao.signUpMember(sqlSession, m);
	}

	@Override
	public ArrayList<TotalOrder> viewTotalOrder(HashMap<String, Object> map) {
		return memberDao.viewTotalOrder(sqlSession, map);
	}

	@Override
	public ArrayList<Product> viewProductOrder(int memberNo, PageInfo pi) {
		return memberDao.viewProductOrder(sqlSession, memberNo, pi);
	}

	@Override
	public int updateAccount(Member m) {
		return memberDao.updateAccount(sqlSession, m);
	}

	@Override
	public int updateMemberPwd(Member m) {
		return memberDao.updateMemberPwd(sqlSession, m);
	}

	@Override
	public int deleteMember(int memberNo) {
		return memberDao.deleteMember(sqlSession, memberNo);
	}

	@Override
	public int addToReview(Review r, ReviewAttachment rat) {
		int result = memberDao.addToReview(sqlSession, r);
		result += memberDao.addToReviewImage(sqlSession, rat);
		return result;
	}

	@Override
	public int removeReview(Review r) {
		return memberDao.removeReview(sqlSession, r);
	}

	@Override
	public ArrayList<TotalOrder> viewLastTotalOrder(int memberNo) {
		return memberDao.viewLastTotalOrder(sqlSession, memberNo);
	}

	@Override
	public ArrayList<Product> viewLastProductOrder(int memberNo) {
		return memberDao.viewLastProductOrder(sqlSession, memberNo);
	}

	@Override
	public int orderListCount(int memberNo) {
		return memberDao.orderListCount(sqlSession, memberNo);
	}

	@Override
	public Review showReview(Review r) {
		return memberDao.showReview(sqlSession, r);
	}

	@Override
	public ReviewAttachment showReviewPics(int reviewNo) {
		return memberDao.showReviewPics(sqlSession, reviewNo);
	}

}
