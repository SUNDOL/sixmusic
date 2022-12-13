package com.kh.sixmusic.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.sixmusic.member.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
}
