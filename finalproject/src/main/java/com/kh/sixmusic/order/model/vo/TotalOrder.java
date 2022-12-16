package com.kh.sixmusic.order.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class TotalOrder {
	private int orderNo;//	ORDER_NO	주문_번호
	private int memberNo;//	REF_MEMBER_NO	회원_번호
	private int zipcode;//REF_ZIPCODE 우편_번호
	private Date orderDate;//	ORDER_DATE	주문_날짜
	private int payment;//	PAYMENT	주문_총액
	private String status;//	STATUS	주문_상태
}
