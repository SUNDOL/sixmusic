package com.kh.sixmusic.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.sixmusic.member.model.vo.Member;


@SuppressWarnings("deprecation")
public class AdminInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		if (loginUser != null && loginUser.getGradeNo().equals("3")) {
			return true;
		}else {
			session.setAttribute("alertMsg", "관리자 권한이 필요합니다.");
			response.sendRedirect(request.getContextPath());
			return false;
		}
		
	}

}
