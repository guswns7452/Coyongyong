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
@RequestMapping(value="/study")
public class studyController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	HttpServletRequest request;
	
	@Autowired
	private studyService studyService;
	
	@RequestMapping(value = {"/list"}, method = RequestMethod.GET)
	public String studyList(@RequestParam(required = false, defaultValue = "1") int page, Model model) throws Exception {
	    List<studyVO> study = studyService.readAllStudy();
	    
	    int startIndex = (page - 1) * 10;
	    int endIndex = Math.min(startIndex + 10, study.size());
	    List<studyVO> pageStudy = study.subList(startIndex, endIndex);
	    
	    logger.info("/study/list URL called. Then studylist method executed.");
	    model.addAttribute("pageStudy", pageStudy);
	    
	    return "studyJournalList"; // jsp 파일
	}
	
	@RequestMapping(value = {"/writestudy"}, method = RequestMethod.GET)
	public String studyWrite(Model model) throws Exception{
		
		logger.info(" /study/writestudy URL called. then studylist method executed.");
		
		return "studyJournalGenerate";
	}
	
	@RequestMapping(value = {"/writestudy"}, method = RequestMethod.POST)
	public String writeStudyPost(@ModelAttribute("study") studyVO vo) throws Exception{
		int studyNum = studyService.countLastStudyNum() + 1;
		vo.setStudyNum(studyNum); vo.setStudyContent(null); vo.setStudyDate(); vo.setStudyTitle(null); vo.setStudyDate(); vo.setGoodCount(studyNum);
		studyService.addStudy(vo);
		logger.info(vo.toString());
		logger.info("/study/writestudy URL called. then studylist method executed.");
		
		return "redirect:./view?num="+studyNum;
	}

	/*
	@GetMapping("/view")
	public String studyView() throws Exception {
		return "studyJournalView";
	}
	*/
	@RequestMapping(value = {"/view"}, method = RequestMethod.GET)
	public String studyView(@RequestParam("num") int num, Model model) throws Exception{
		studyVO study = studyService.readStudyByNum(num);
		List<studyVO> studylist = studyService.readAllStudy();
		
		logger.info(" /study/OneQuestion URL called. then listquestion method executed.");
		model.addAttribute("study", study);
		model.addAttribute("studies", studylist);
		
		return "studyJournalView";
	}
}
