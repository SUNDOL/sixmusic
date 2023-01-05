package com.kh.sixmusic.question.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.question.model.dao.QuestionDao;
import com.kh.sixmusic.question.model.vo.Question;

@Service
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	private QuestionDao questionDao;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int addToQuestion(Question q) {
		return questionDao.addToQuestion(sqlSession, q);
	}

	@Override
	public int csListCount(int memberNo) {
		return questionDao.csListCount(sqlSession, memberNo);
	}

	@Override
	public ArrayList<Question> memberCsInfo(int memberNo, PageInfo pi) {
		return questionDao.memberCsInfo(sqlSession, memberNo, pi);
	}

	@Override
	public int addToAnswer(Question q) {
		return questionDao.addToAnswer(sqlSession, q);
	}


}
