package com.kh.sixmusic.data.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Filter {
	private int categoryNo;
	private int typeNo;
	private int modelNo;
	private int brandNo;
	private int priceMax;
	private int priceMin;
}
