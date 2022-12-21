package com.kh.sixmusic.member.model.service;

import com.kh.sixmusic.member.model.vo.Member;

public interface MemberService {
	Member loginMember(Member m);
	int nicknameCheck(String memberNickname);
	int signUpMember(Member m);
	int checkId(String MemberId);
	int updateMember(Member m);
	int secessionMember(Member m);
	

}
