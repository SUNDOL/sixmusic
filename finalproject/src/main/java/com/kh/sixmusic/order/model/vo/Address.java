package com.kh.sixmusic.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Address {
	private int zipxode;//	ZIPCODE	우편_번호
	private int memberNo;//	REF_MEMBER	회원_번호
	private String address1;//	ADDRESS_1	기본_주소
	private String address2;//	ADDRESS_2	상세_주소
}
