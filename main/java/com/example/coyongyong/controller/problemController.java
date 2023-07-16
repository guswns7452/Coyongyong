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
	
	//근데 problemService가 없는데
	/*@RequestMapping(value = {"/list"}, method = RequestMethod.GET)
	public String problemList(@RequestParam(required = false, defaultValue = "1") int page, Model model) throws Exception {
	    List<problemVO> problems = problemService.readProblemList();
	    
	    int startIndex = (page - 1) * 5;
	    int endIndex = Math.min(startIndex + 5, problems.size());
	    List<problemVO> pageproblems = problems.subList(startIndex, endIndex);
	    
	    logger.info("/problem/List URL called. Then listproblem method executed.");
	    model.addAttribute("problems", pageproblems);
	    
	    return "problemlist"; // jsp 파일
	}
	
	
	@RequestMapping(value = {"/play"}, method = RequestMethod.GET)
	public String problemPlay(@RequestParam("num") int num, Model model) throws Exception{
		problemVO problem = problemService.readProblem(num);
		List<problemVO> problems = problemService.readProblemList();
		
		
		logger.info(" /problem/play URL called. then listproblem method executed.");
		model.addAttribute("problem", problem);
		model.addAttribute("problems", problems);
		
		return "problem";
	}
	*/
}
