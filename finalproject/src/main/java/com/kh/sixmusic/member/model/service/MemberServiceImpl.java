package com.kh.sixmusic.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.member.model.dao.MemberDao;
import com.kh.sixmusic.member.model.vo.Member;

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
	public int checkId(String MemberId) {
		return memberDao.checkId(sqlSession, MemberId);
	}

	@Override
	public int signUpMember(Member m) {
		return memberDao.signUpMember(sqlSession, m);
	}

	@Override
	public int updateMember(Member m) {
		return memberDao.updateMemner(sqlSession, m);
	}

	@Override
	public int secessionMember(Member m) {
		return memberDao.secessionMember(sqlSession, m);
	}

}
