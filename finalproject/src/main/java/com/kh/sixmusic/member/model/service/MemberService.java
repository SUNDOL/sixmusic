package com.kh.sixmusic.member.model.service;

import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.order.model.vo.Address;

public interface MemberService {
	Member loginMember(Member m);
	int checkId(String MemberId);
	int signUpMember(Member m, Address a);
	int updateMemner(Member m);
	int secessionMember(Member m);
}
