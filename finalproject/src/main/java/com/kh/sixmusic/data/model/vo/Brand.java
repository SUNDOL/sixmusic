package com.kh.sixmusic.data.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Brand {
	private int brandNo;//	BRAND_NO	회사_번호
	private String name;//	BRAND_NAME	회사명
	private String status;//	STATUS	상태값(Y/N)
	private int quantity;//	제품의 갯수
}