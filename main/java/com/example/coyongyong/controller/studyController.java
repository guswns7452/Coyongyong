package com.example.coyongyong.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.coyongyong.domain.customerVO;
import com.example.coyongyong.domain.studyVO;
import com.example.coyongyong.service.customerService;
import com.example.coyongyong.service.studyService;

@Controller
@RequestMapping(value="/study")
public class studyController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	

	

	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");

	
	@Autowired
	private studyService studyService;
	
	@Autowired
	private customerService customerService;
	
	@Autowired
	SessionController sessioncontroller;
	
	
	@RequestMapping(value = {"/list"}, method = RequestMethod.GET)
	public String studyList(@RequestParam("page") int page, Model model) throws Exception {
	    List<studyVO> study = studyService.readAllStudy();
	    
	    logger.info("/study/list URL called. Then studylist method executed.");
	    model.addAttribute("studys", study);
	    model.addAttribute("page", page);
	    
	    return "studyJournalList"; // jsp 파일
	}
	
	@RequestMapping(value = {"/writestudy"}, method = RequestMethod.GET)
	public String studyWrite(Model model,HttpServletRequest request) throws Exception{
		if(sessioncontroller.sessionCheck(request) == "true") {
			logger.info(" /study/writestudy URL called. then studylist method executed.");
			return "studyJournalGenerate";
		}
		return "redirect:/login"; 
		
	}
	


	@RequestMapping(value = {"/writestudy"}, method = RequestMethod.POST)
	public String writeStudyPost(@ModelAttribute("study") studyVO vo, HttpServletRequest request) throws Exception{
		int studyNum = 1;
		customerVO customer = null;
		try {
			HttpSession session = request.getSession();
			customer = (customerVO)session.getAttribute("customer");
		}
		catch(Exception e){
			//로그인이 되어 있지 않으면 객체 등록이 되어있지 않은거
			//jsp에서는 logining 객체가 등록되어 있으면 -> 로그인 상태 / 없으면 -> 로그아웃 상태
			logger.info("로그인 되어있지 않음.");
		}
		
		studyNum = studyService.countLastStudyNum() + 1;
	    vo.setStudyNum(studyNum);
	    vo.setCustomerID(customer.getcustomerID());
	    vo.setStudyDate();
	    vo.setGoodCount(0);
	    vo.setGradeNum(studyNum);
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
		
		studyService.updateStudyCount(study);
		
		logger.info(" /study/view URL called. then listquestion method executed.");
		model.addAttribute("study", study);
		model.addAttribute("studylist", studylist);
		
		return "studyJournalView";
	}
}
