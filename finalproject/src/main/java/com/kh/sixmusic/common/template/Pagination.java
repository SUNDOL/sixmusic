package com.kh.sixmusic.common.template;

import com.kh.sixmusic.common.model.vo.PageInfo2;

public class Pagination {

	
	public static PageInfo2 getPageinfo2(int listCount,int currentPage,int pageLimit,int boardLimit) {
		
		int maxPage=(int)(Math.ceil(((double)listCount / boardLimit)));
		
		int startPage = (currentPage-1)/pageLimit * pageLimit + 1;
		
		int endPage = startPage + pageLimit - 1; 
		
		
		if(endPage>maxPage) {
			endPage = maxPage;
		}
		
//		PageInfo pi = new PageInfo(listCount,boardLimit,currentPage,pageLimit,maxPage,startPage,endPage);
//		return pi;
		
		return new PageInfo2(listCount,currentPage,pageLimit,boardLimit,maxPage,startPage,endPage);
	}
}
