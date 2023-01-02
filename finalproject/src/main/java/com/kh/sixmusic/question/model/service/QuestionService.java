package com.kh.sixmusic.question.model.service;

import com.kh.sixmusic.question.model.vo.Question;

public interface QuestionService {

	int addToQuestion(Question q);

	int addToAnswer(Question q);

}
