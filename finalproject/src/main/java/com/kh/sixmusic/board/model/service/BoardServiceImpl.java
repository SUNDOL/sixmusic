package com.kh.sixmusic.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.board.model.dao.BoardDao;
import com.kh.sixmusic.board.model.vo.Board;
import com.kh.sixmusic.board.model.vo.Reply;
import com.kh.sixmusic.common.model.vo.PageInfo2;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private BoardDao boardDao;
	
	@Override
	public int selectListCount(int boardCate) {
		
		return boardDao.selectListCount(sqlSession, boardCate);
	}
	@Override
	public int selectAnListCount() {
		
		return boardDao.selectAnListCount(sqlSession);
	}
	
	@Override
	public ArrayList<Board> selectList(PageInfo2 pi, int boardCate) {
		return boardDao.selectList(sqlSession,pi,boardCate);
	}
	@Override
	public ArrayList<Board> selectAnList(PageInfo2 pi) {
		return boardDao.selectAnList(sqlSession,pi);
	}

	@Override
	public int insertBoard(Board b) {
		return boardDao.insertBoard(sqlSession,b);
	}

	@Override
	public int increaseCount(int boardNo) {
		return boardDao.increaseAnCount(sqlSession,boardNo);
	}
	@Override
	public int increaseAnCount(int boardNo) {
		return boardDao.increaseAnCount(sqlSession,boardNo);
	}
	@Override
	public Board selectBoard(int boardNo) {
		return boardDao.selectBoard(sqlSession,boardNo);
	}
	@Override
	public Board selectAnBoard(int boardNo) {
		return boardDao.selectAnBoard(sqlSession,boardNo);
	}

	@Override
	public int deleteBoard(int boardNo) {
		return boardDao.deleteBoard(sqlSession,boardNo);
	}

	@Override
	public int updateBoard(Board b) {
		return boardDao.updateBoard(sqlSession,b);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int bno) {
		return boardDao.selectReplyList(sqlSession,bno);
	}

	@Override
	public int insertReply(Reply r) {
		return boardDao.insertReply(sqlSession,r);
	}

	@Override
	public ArrayList<Board> topBoard() {
		return boardDao.topBoard(sqlSession);
	}

}
