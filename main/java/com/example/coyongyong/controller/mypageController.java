package com.example.coyongyong.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/mypage")
public class mypageController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	@Autowired
	SessionController sessioncontroller;
	// 질문 글 번호를 어떻게 받아올 것?
	
	@GetMapping("/dashboard")
	public String mypage(HttpServletRequest request) throws Exception {
		if(sessioncontroller.sessionCheck(request) == "true") {
			return "mypage";
		}
		return "redirect:/login"; 
	}
	
	@GetMapping("/question")
	public String mypageQuestion(HttpServletRequest request) throws Exception {
		if(sessioncontroller.sessionCheck(request) == "true") {
			return "mypage_question";
		}
		return "redirect:/login"; 
	}
	
	@GetMapping("/study")
	public String mypageStudy(HttpServletRequest request) throws Exception {
		if(sessioncontroller.sessionCheck(request) == "true") {
			return "mypage_study";
		}
		return "redirect:/login"; 
	}
	
	@GetMapping("/problem")
	public String mypageProblem(HttpServletRequest request) throws Exception {
		if(sessioncontroller.sessionCheck(request) == "true") {
			return "mypage_problem";
		}
		return "redirect:/login"; 
	}
	
}