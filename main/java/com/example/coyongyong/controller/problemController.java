package com.example.coyongyong.controller;

import com.example.coyongyong.domain.*;

import com.example.coyongyong.service.*;
import com.example.coyongyong.chatGPT.*;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/problem")
public class problemController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	HttpServletRequest request;
	
	@GetMapping("/list")
	public String problemList() throws Exception {
		return "problemlist";
	}
	
	@GetMapping("/play")
	public String problemPlay() throws Exception {
		return "problem";
	}
	
	
}
