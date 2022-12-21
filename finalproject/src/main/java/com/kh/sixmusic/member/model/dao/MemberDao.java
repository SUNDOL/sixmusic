package com.kh.sixmusic.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.kh.sixmusic.member.model.vo.Member;

@Repository
public class MemberDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int nicknameCheck(SqlSessionTemplate sqlSession, String memberNickname) {
		return sqlSession.selectOne("memberMapper.nicknameCheck", memberNickname);
	}

	public int checkId(SqlSessionTemplate sqlSession, String memberId) {
		return 0;
	}

	public int signUpMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.signUpMember", m);
	}

	public int updateMemner(SqlSessionTemplate sqlSession, Member m) {
		return 0;
	}

	public int secessionMember(SqlSessionTemplate sqlSession, Member m) {
		return 0;
	}


}
