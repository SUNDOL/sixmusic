package com.kh.sixmusic.question.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class QuestionCategory {
	private int categoryNo;//	CATEGORY_NO	NUMBER	질문_카테고리_번호
	private String name;//	CATEGORY_NAME	VARCHAR2(100 BYTE)	질문_카테고리명
}
