package com.kh.sixmusic.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ReviewAttachment {
	private int attachmentNo;//	PRODUCT_ATTACHMENT_NO	상품_첨부파일_번호
	private int productNo;//	REF_PRODUCT_NO	상품번호(FK)
	private String originName;//	PRODUCT_ATTACHMENT_ORIGIN_NAME	첨부파일_원본명
	private String changeName;//	PRODUCT_ATTACHMENT_CHANGE_NAME	첨부파일_수정명
	private String filePath;//	PRODUCT_ATTACHMENT_FILE_PATH	첨부파일_경로
}
