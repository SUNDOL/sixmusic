package com.kh.sixmusic.board.model.service;

import java.util.ArrayList;

import com.kh.sixmusic.board.model.vo.Board;
import com.kh.sixmusic.board.model.vo.Reply;
import com.kh.sixmusic.common.model.vo.PageInfo2;

public interface BoardService {
	
	//게시판 리스트 조회 + 페이징처리
	//게시글 총 개수
	int selectListCount(int boardCate);
	int selectAnListCount();
	//게시글 리스트 조회
	ArrayList<Board> selectList(PageInfo2 pi, int boardCate);
	ArrayList<Board> selectAnList(PageInfo2 pi);
	//게시글 작성
	int insertBoard(Board b);
	
	//게시글 상세 조회
	//게시글 조회수 증가
	int increaseCount(int boardNo);
	int increaseAnCount(int boardNo);
	//게시글 상세 조회
	Board selectBoard(int boardNo);
	//게시글 상세 조회
	Board selectAnBoard(int boardNo);
	//게시글 삭제
	int deleteBoard(int boardNo);
	
	//게시글 수정
	int updateBoard(Board b);
	
	//댓글리스트 조회
	ArrayList<Reply> selectReplyList(int bno);
	
	//댓글 작성 
	int insertReply(Reply r);
	
	//게시글 탑5 조회
	ArrayList<Board> topBoard();
	
}
