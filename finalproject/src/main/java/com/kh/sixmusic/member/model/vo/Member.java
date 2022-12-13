package com.kh.sixmusic.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Member {
	private int memberNo; //	MEMBER_NO	회원_번호
	private int refTypeNo; //	REF_TYPE_NO	플랫폼_번호	
	private String memberId;// MEMBER_ID	회원_아이디
	private String memberPwd;//	MEMBER_PWD	회원_비밀번호
	private String memberName;//	MEMBER_NAME	회원_이름
	private String memberNickname;//	MEMBER_NICKNAME	회원_닉네임
	private String refGradeNo;//	REF_GRADE_NO	회원_등급번호
	private String gender;//	GENDER	성별
	private String address;//	ADDRESS	주소
	private Date birthday;//	BIRTHDAY	생일
	private Date createDate; //	CREATE_DATE	회원가입일
	private int point; //	POINT	포인트
	private String phone;//	PHONE	전화번호
	private String status; //	STATUS	상태값(Y/N)
}
