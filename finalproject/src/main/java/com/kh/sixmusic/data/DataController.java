package com.kh.sixmusic.data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.sixmusic.data.model.service.DataService;

@Controller
public class DataController {
	@Autowired
	private DataService dataService;
}
