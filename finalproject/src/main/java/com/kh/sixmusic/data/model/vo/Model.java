package com.kh.sixmusic.data.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Model {
	private int modelNo;//	MODEL_NO	모델_번호
	private String name;//	MODEL_NAME	모델명
	private int brandNo;//	REF_BRAND_NO	회사_번호(FK)
	private String status;//	STATUS	상태값(Y/N)
	private int quantity;// 제품의 갯수
}
