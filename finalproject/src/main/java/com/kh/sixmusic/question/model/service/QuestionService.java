package com.kh.sixmusic.question.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.question.model.vo.Question;

public interface QuestionService {

	int addToQuestion(Question q);

	int csListCount(int memberNo);

	ArrayList<Question> memberCsInfo(int memberNo, PageInfo pi);

	int addToAnswer(Question q);

}
