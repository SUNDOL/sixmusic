package com.kh.sixmusic.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Cart {

	private int cartNo;//	CART_NO	장바구니_번호
	private int memberNo;//	REF_MEMBER_NO	회원_번호
	private int productNo;//	REF_PRODUCT_NO	상품_번호
	private int quantity;//	QUANTITY	상품_수량
}
