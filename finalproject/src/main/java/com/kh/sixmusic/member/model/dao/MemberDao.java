package com.kh.sixmusic.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.Review;
import com.kh.sixmusic.product.model.vo.ReviewAttachment;

@Repository
public class MemberDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}

	public int nicknameCheck(SqlSessionTemplate sqlSession, String memberNickname) {
		return sqlSession.selectOne("memberMapper.nicknameCheck", memberNickname);
	}

	public int idCheck(SqlSessionTemplate sqlSession, String memberId) {
		return sqlSession.selectOne("memberMapper.idCheck", memberId);
	}

	public int signUpMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.signUpMember", m);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<TotalOrder> viewTotalOrder(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return (ArrayList) sqlSession.selectList("memberMapper.viewTotalOrder", map);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> viewProductOrder(SqlSessionTemplate sqlSession, int memberNo, PageInfo pi) {
		return (ArrayList) sqlSession.selectList("memberMapper.viewProductOrder", memberNo, pi.getRowBounds());
	}

	public int updateAccount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateAccount", m);
	}

	public int updateMemberPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemberPwd", m);
	}

	public int deleteMember(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.update("memberMapper.deleteMember", memberNo);
	}

	public int addToReview(SqlSessionTemplate sqlSession, Review r) {
		return sqlSession.insert("memberMapper.addToReview", r);
	}

	public int addToReviewImage(SqlSessionTemplate sqlSession, ReviewAttachment rat) {
		return sqlSession.insert("memberMapper.addToReviewImage", rat);
	}

	public int removeReview(SqlSessionTemplate sqlSession, Review r) {
		return sqlSession.update("memberMapper.removeReview", r);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<TotalOrder> viewLastTotalOrder(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList) sqlSession.selectList("memberMapper.viewLastTotalOrder", memberNo);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Product> viewLastProductOrder(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList) sqlSession.selectList("memberMapper.viewLastProductOrder", memberNo);
	}

	public int orderListCount(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("memberMapper.orderListCount", memberNo);
	}

	public Review showReview(SqlSessionTemplate sqlSession, Review r) {
		return sqlSession.selectOne("memberMapper.showReview", r);
	}

	public ReviewAttachment showReviewPics(SqlSessionTemplate sqlSession, int reviewNo) {
		return sqlSession.selectOne("memberMapper.showReviewPics", reviewNo);
	}

	public int ReviewModification(SqlSessionTemplate sqlSession, Review r) {
		return sqlSession.update("memberMapper.ReviewModification", r);
	}

	public int ReviewAttachmentModification(SqlSessionTemplate sqlSession, ReviewAttachment rat) {
		return sqlSession.update("memberMapper.ReviewAttachmentModification", rat);
	}

}
