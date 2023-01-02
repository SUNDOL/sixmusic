package com.kh.sixmusic.question.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Question {

	private int serviceNo;//	SERVICE_NO	NUMBER	QnA_번호
	private String member;//	REF_MEMBER_NO	NUMBER	회원_번호
	private String questionTitle;//	QUESTION_TITLE	VARCHAR2(1000 BYTE)	질문_제목
	private String questionContent;//	QUESTION_CONTENT	VARCHAR2(4000 BYTE)	질문_내용
	private String answerContent;//	ANSWER_CONTENT	VARCHAR2(4000 BYTE)	답변_내용
	private String category;//	REF_QUESTION_CATEGORY_NO	NUMBER	질문_카테고리_번호
	private String status;//	STATUS	VARCHAR2(1 BYTE)	상태값(Y/N)
	private Date createDate;//	CREATE_DATE	DATE	생성_날짜
	private Date answerDate;//	ANSWER_DATE	DATE	답변_날짜
}
