package com.kh.sixmusic.question.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.sixmusic.common.model.vo.PageInfo;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.question.model.service.QuestionService;
import com.kh.sixmusic.question.model.vo.Question;

@Controller
public class QuestionController {
	@Autowired
	private QuestionService questionService;

	@PostMapping("addToQuestion.qa")
	public ModelAndView addToQuestion(HttpSession session, ModelAndView mv, Question q, MultipartFile image) {
		System.out.println(q);
		int result = 0;
		String filePath = "resources/image/question/";
		String savePath = session.getServletContext().getRealPath("/" + filePath);
		if (!image.getOriginalFilename().equals("")) {
			Date newDate = new Date();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmm");
			String strDate = simpleDateFormat.format(newDate);
			String originName = image.getOriginalFilename();
			String ext = originName.substring(originName.lastIndexOf("."));
			String changeName = "qna-" + q.getMemberNo() + "-" + strDate + ext;
			try {
				image.transferTo(new File(savePath + changeName));
			} catch (IOException e) {
				e.printStackTrace();
			}
			q.setQuestionFilePath(filePath);
			q.setQuestionOriginName(image.getOriginalFilename());
			q.setQuestionChangeName(changeName);
		}
		result = questionService.addToQuestion(q);
		if (result > 0) {
			session.setAttribute("alertMsg", "감사합니다. 고객님의 질문을 접수하였습니다.");
			mv.setViewName("redirect:/myAccount.me");
		} else {
			mv.addObject("errorMsg", "에러 발생");
			mv.setViewName("common/error");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "memberCsInfo.qa", produces = "application/json; charset=UTF-8")
	public String memberCsInfo(HttpSession session, @RequestParam(defaultValue = "1") int currentPage) {
		Member m = (Member)session.getAttribute("loginUser");
		int listCount = questionService.csListCount(m.getMemberNo());
		PageInfo pi = new PageInfo(listCount, currentPage, 10, 5);
		ArrayList<Question> question = questionService.memberCsInfo(m.getMemberNo(), pi);
		Gson gson = new Gson();
		HashMap<String, Object> pMap = new HashMap<>();
		pMap.put("pi", pi);
		pMap.put("question", question);
		return gson.toJson(pMap);
	}
	
	@ResponseBody
	@RequestMapping(value = "adminCsInfo.qa", produces = "application/json; charset=UTF-8")
	public String adminCsInfo(HttpSession session, @RequestParam(defaultValue = "1") int currentPage) {
		int listCount = questionService.csListCount(0);
		PageInfo pi = new PageInfo(listCount, currentPage, 10, 10);
		ArrayList<Question> question = questionService.memberCsInfo(0, pi);
		Gson gson = new Gson();
		HashMap<String, Object> qMap = new HashMap<>();
		qMap.put("pi", pi);
		qMap.put("question", question);
		return gson.toJson(qMap);		
	}

	@PostMapping("addToAnswer.qa")
	public ModelAndView addToAnswer(HttpSession session, ModelAndView mv, Question q) {
		System.out.println(q);
		int result = questionService.addToAnswer(q);
		if (result > 0) {
			session.setAttribute("alertMsg", "답변이 등록되었습니다.");
			mv.setViewName("redirect:/admin.ad");
		} else {
			mv.setViewName("common/error");
		}
		return mv;
	}
}
