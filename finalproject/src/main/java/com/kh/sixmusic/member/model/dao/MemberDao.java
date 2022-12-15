package com.kh.sixmusic.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.member.model.vo.Member;

@Repository
public class MemberDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return null;
	}

	public int checkId(SqlSessionTemplate sqlSession, String memberId) {
		return 0;
	}

	public int signUpMember(SqlSessionTemplate sqlSession, Member m) {
		return 0;
	}

	public int updateMemner(SqlSessionTemplate sqlSession, Member m) {
		return 0;
	}

	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		return 0;
	}


}
