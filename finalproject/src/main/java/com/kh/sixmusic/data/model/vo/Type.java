package com.kh.sixmusic.data.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Type {
	private int typeNo;//	TYPE_NO	타입_번호
	private int categoryNo;//	REF_CATEGORY_NO	카테고리_번호
	private String name;//	TYPE_NAME	타입 이름(일렉트릭-솔리드바디/일렉트릭-할로우바디...)
	private String status;//	STATUS	상태값(Y/N)
}
