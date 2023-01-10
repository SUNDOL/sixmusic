package com.kh.sixmusic.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.board.model.vo.Board;
import com.kh.sixmusic.board.model.vo.Reply;
import com.kh.sixmusic.common.model.vo.PageInfo2;

@Repository
public class BoardDao {

	public int selectListCount(SqlSessionTemplate sqlSession, int boardCate) {
		return sqlSession.selectOne("boardMapper.selectListCount", boardCate);
	}

	public int selectAnListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectAnListCount");
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Board> selectList(SqlSessionTemplate sqlSession, PageInfo2 pi, int boardCate) {
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", boardCate, rowBounds);
	}
	
	public ArrayList<Board> selectAnList(SqlSessionTemplate sqlSession, PageInfo2 pi) {
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectAnList", null, rowBounds);
	}

	public int increaseAnCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseAnCount", boardNo);
	}

	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.detailBoard",boardNo);
	}
	public Board selectAnBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.detailBoard",boardNo);
	}

	public int insertBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertBoard",b);
	}

	public int updateBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.update("boardMapper.updateBoard",b);
	}

	public int deleteBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.deleteBoard",boardNo);
	}

	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int bno) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList",bno);
	}

	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("boardMapper.insertReply",r);
	}

	public ArrayList<Board> topBoard(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("boardMapper.topBoard");
	}

}
