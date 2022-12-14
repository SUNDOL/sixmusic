package com.kh.sixmusic.data.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Category {
	private int categoryNo;//	CATEGORY_NO	카테고리_번호
	private String name;//	CATEGORY_NAME	카테고리_이름(기타/베이스)
	private String status;//	STATUS	상태값(Y/N)
}
