package com.kh.sixmusic.question.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.question.model.vo.Question;

@Repository
public class QuestionDao {

	public int addToQuestion(SqlSessionTemplate sqlSession, Question q) {
		return sqlSession.insert("questionMapper.addToQuestion", q);
	}

	public int addToAnswer(SqlSessionTemplate sqlSession, Question q) {
		return sqlSession.update("questionMapper.addToAnswer", q);
	}

}
