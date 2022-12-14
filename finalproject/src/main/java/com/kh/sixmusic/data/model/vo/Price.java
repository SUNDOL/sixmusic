package com.kh.sixmusic.data.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Price {
	private int priceNo;//	PRICE_NO	가격_번호
	private int min;//	PRICE_MIN	최소가격
	private int max;//	PRICE_MAX	최대가격
}
