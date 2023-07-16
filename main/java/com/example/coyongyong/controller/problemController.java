package com.example.coyongyong.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/problem")
public class problemController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	@Autowired
	SessionController sessioncontroller;
	
	@GetMapping("/list")
	public String problemList(HttpServletRequest request) throws Exception {
		if(sessioncontroller.sessionCheck(request) == "true") {

			return "problemlist";
		}
		return "redirect:/login"; 
	}
	
	@GetMapping("/play")
	public String problemPlay(HttpServletRequest request) throws Exception {
		if(sessioncontroller.sessionCheck(request) == "true") {
			return "problem";
		}
		return "redirect:/login"; 
		
	}
	
	
}
