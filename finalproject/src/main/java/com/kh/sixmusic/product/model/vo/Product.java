package com.kh.sixmusic.product.model.vo;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Product {
	private int productNo;//	PRODUCT_NO	상품_번호
	private String category;//	REF_CATEGORY_NO	카테고리_번호(FK)
	private String type;//	REF_TYPE_NO	타입_번호(FK)
	private String brand;//	
	private String model;//	REF_MODEL_NO	모델_번호(FK)
	private String color;//	PRODUCT_COLOR	상품_색상
	private String name;//	PRODUCT_NAME	상품명
	private String content;//	PRODUCT_CONTENT	상품_상세설명
	private int price;//	PRODUCT_PRICE	상품_가격
	private int quantity;//	PRODUCT_QUANTITY	상품_수량
	private String status;//	STATUS	상태값(Y/N)
	private int rating;//	REVIEW 테이블의  RATING의 평균 값
	private int count;//	REVIEW 의 갯수 값
}
