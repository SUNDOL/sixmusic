package com.kh.sixmusic.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.member.model.dao.MemberDao;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.Address;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao memberDao;
	@Override
	public Member loginMember(Member m) {
		return memberDao.loginMember(sqlSession,m);
	}
	@Override
	public int checkId(String MemberId) {
		return memberDao.checkId(sqlSession,MemberId);
	}
	@Override
	public int signUpMember(Member m, Address a) {
		int result1 = memberDao.signUpMember(sqlSession,m);
		int result2 = memberDao.signUpAddrees(sqlSession,a);
		int finalResult = result1 * result2;
		if (finalResult < 1) {
			sqlSession.rollback();
		}
		return finalResult;
	}
	@Override
	public int updateMemner(Member m) {
		return memberDao.updateMemner(sqlSession,m);
	}
	@Override
	public int secessionMember(Member m) {
		return memberDao.secessionMember(sqlSession,m);
	}

}
