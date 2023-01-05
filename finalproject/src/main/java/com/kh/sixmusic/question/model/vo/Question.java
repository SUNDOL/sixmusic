package com.kh.sixmusic.question.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Question {

	private int serviceNo;
	private int memberNo;
	private String memberId;
	private String memberNickname;
	private int questionCategory;
	private String questionTitle;
	private String questionContent;
	private String questionOriginName;
	private String questionFilePath;
	private String questionChangeName;
	private String questionReply;
	private String Status;
	private Date createDate;
}
