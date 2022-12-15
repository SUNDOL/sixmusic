package com.kh.sixmusic.member.model.service;

import com.kh.sixmusic.member.model.vo.Member;

public interface MemberService {
	Member loginMember(Member m);
	int checkId(String MemberId);
	int signUpMember(Member m);
	int updateMemner(Member m);
	int deleteMember(Member m);
}
