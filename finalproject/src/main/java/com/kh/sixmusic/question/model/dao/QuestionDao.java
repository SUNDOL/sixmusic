package com.kh.sixmusic.question.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.question.model.vo.Question;

@Repository
public class QuestionDao {

	public int addToQuestion(SqlSessionTemplate sqlSession, Question q) {
		return sqlSession.insert("questionMapper.addToQuestion", q);
	}
	
	public int csListCount(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("questionMapper.csListCount", memberNo);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Question> memberCsInfo(SqlSessionTemplate sqlSession, int memberNo, PageInfo pi) {
		return (ArrayList) sqlSession.selectList("questionMapper.memberCsInfo", memberNo, pi.getRowBounds());
	}

	public int addToAnswer(SqlSessionTemplate sqlSession, Question q) {
		return sqlSession.update("questionMapper.addToAnswer", q);
	}

}
