package com.example.coyongyong.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

@Controller
public class SessionController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	public String sessionCheck(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("customer") == null){
			logger.info("로그인이 되어있지 않아 로그인 페이지로 갑니다.");
			return "login";
		}
		
		return "true";
	}
}
