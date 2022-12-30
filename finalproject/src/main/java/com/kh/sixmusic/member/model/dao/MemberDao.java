package com.kh.sixmusic.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.ProductOrder;
import com.kh.sixmusic.order.model.vo.TotalOrder;
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

	public int idCheck(SqlSessionTemplate sqlSession, String memberId){
		return sqlSession.selectOne("memberMapper.idCheck", memberId);
	}
	
	public int signUpMember(SqlSessionTemplate sqlSession, Member m){
		return sqlSession.insert("memberMapper.signUpMember", m);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<TotalOrder> viewTotalOrder(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.viewTotalOrder", memberNo);
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<ProductOrder> viewProductOrder(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.viewProductOrder", memberNo);
	}

	public int updateAccount(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateAccount", m);
	}

	public int updateMemberPwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemberPwd", m);
	}

	public int addToReview(SqlSessionTemplate sqlSession, Review r) {
		return sqlSession.insert("memberMapper.addToReview", r);
	}

	public int addToReviewImage(SqlSessionTemplate sqlSession, ReviewAttachment rat) {
		return sqlSession.insert("memberMapper.addToReviewImage", rat);
	}

	public int removeReview(SqlSessionTemplate sqlSession, Review r) {
		return sqlSession.update("memberMapper.updateMemberPwd", r);
	}




}
