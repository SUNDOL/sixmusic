package com.kh.sixmusic.product.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Review {
	private int reviewNo; //	REVIEW_NO	리뷰_번호
	private String writer; //	REF_MEMBER_NO	회원_번호
	private String memberNickname; // MEMBER_NICKNAME
	private int productNo; //	REF_PRODUCT_NO	제품_번호
	private String content; //	REVIEW_CONTENT	리뷰_내용
	private Double rating; //	RATING	별점
	private Date createDate; //	CREATE_DATE	리뷰_생성일
	private String status; //	STATUS	상태값(Y/N)
}
