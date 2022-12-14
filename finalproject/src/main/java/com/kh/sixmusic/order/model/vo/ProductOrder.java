package com.kh.sixmusic.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ProductOrder {
	private int orderNo;//	REF_ORDER_NO	주문_번호
	private int productNo;//	REF_PRODUCT_NO	상품_번호
	private int quantity;//	QUANTITY	수량
}
