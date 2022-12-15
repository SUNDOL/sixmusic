package com.kh.sixmusic.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommonController {
	@GetMapping("error.co")
	public String errorForm() {
		return "common.error";
	}
}
