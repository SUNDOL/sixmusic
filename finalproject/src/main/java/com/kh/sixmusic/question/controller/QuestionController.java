package com.kh.sixmusic.question.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.sixmusic.question.model.service.QuestionService;
import com.kh.sixmusic.question.model.vo.Question;
@Controller
public class QuestionController {
	@Autowired
	private QuestionService questionService;
	@PostMapping("addToQuestion.qa")
	public ModelAndView addToQuestion(HttpSession session,ModelAndView mv,Question q) {
		int result = questionService.addToQuestion(q);
		if (result > 0) {
			mv.addObject("alertMsg","");
			mv.setViewName("");
		}else {
			mv.setViewName("common/error");
		}
		return mv;
	}
	@PostMapping("addToAnswer.qa")
	public ModelAndView addToAnswer(HttpSession session,ModelAndView mv,Question q) {
		int result = questionService.addToAnswer(q);
		if (result > 0) {
			session.setAttribute("alertMsg","");
			mv.setViewName("");
		}else {
			mv.setViewName("common/error");
		}
		return mv;
	}
}
