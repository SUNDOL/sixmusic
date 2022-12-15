package com.kh.sixmusic.data.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Model {
	private int modelNo;//	MODEL_NO	모델_번호
	private int name;//	MODEL_NAME	모델명
	private int brandNo;//	REF_BRAND_NO	회사_번호(FK)
	private int status;//	STATUS	상태값(Y/N)
}
