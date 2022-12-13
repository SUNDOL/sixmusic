package com.kh.sixmusic.common.vo;
import org.apache.ibatis.session.RowBounds;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PageInfo {
	private int listCount; // 총 게시글 개수
	private int currentPage; // 현재 페이지
	private int pageLimit; // 하단에 보여질 페이지에 개수
	private int boardLimit; // 한페이지에 보여질 게시글 개수
	private int maxPage; // 최대 페이지번호
	private int startPage; // 첫 페이지 번호
	private int endPage; // 마지막 페이지 번호
	private RowBounds rowBounds;

	public PageInfo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		super();

		this.listCount = listCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.boardLimit = boardLimit;

		maxPage = (int) Math.ceil((double) listCount / boardLimit);

		//첫 페이지 번호 계산 공식
		if (startPage <= pageLimit) { // 최대 페이지 번호보다 현재 페이지가 적을경우 시작페이지는 1
			startPage = 1;
		} else { // (현재 페이지 / 하단에 보여질 페이지 개수) * 하단에 보여질 페이지 개수 + 1
			/*
			 * 현재 페이지 : 14
			 * 하단에 보여질 페이지 개수 : 5
			 * 
			 * 14 / 5 = 2...5
			 * floor(2...5) = 2
			 * 2 * 5 = 10
			 * 10 + 1 = 11
			 * 
			 * 시작페이지는 11
			 * 마지막페이지는 15
			 */ 
			
			startPage = (int) Math.floor((double) currentPage / pageLimit) * pageLimit + 1;
		}
		
		endPage = startPage + pageLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}
		
		rowBounds = new RowBounds((currentPage - 1) * boardLimit, boardLimit);
	}
}
