package com.kh.sixmusic.question.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.question.model.dao.QuestionDao;
import com.kh.sixmusic.question.model.vo.Question;

@Service
public class QuestionServiceImpl implements QuestionService{
	@Autowired
	private QuestionDao questionDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public int addToQuestion(Question q) {
		return questionDao.addToQuestion(sqlSession, q);
	}
	@Override
	public int addToAnswer(Question q) {
		return questionDao.addToAnswer(sqlSession, q);
	}

}
