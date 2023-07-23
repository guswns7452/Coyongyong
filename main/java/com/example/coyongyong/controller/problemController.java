package com.example.coyongyong.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.coyongyong.domain.problemVO;
import com.example.coyongyong.service.problemService;

@Controller
@RequestMapping(value="/problem")
public class problemController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	@Autowired
	SessionController sessioncontroller;
	
	@Autowired
	problemService problemservice;
	
	@GetMapping("/list")
	public String problemList(@RequestParam("language") String language, HttpServletRequest request, Model model) throws Exception {
		if(sessioncontroller.sessionCheck(request) == "true") {
			List<problemVO> problems = problemservice.readAll();
			System.out.println(problems);
			model.addAttribute("problems",problems);
			model.addAttribute("language",language);
			return "problemlist";
		}
		return "redirect:/login"; 
	}
	
	@RequestMapping(value = {"/play"}, method = RequestMethod.GET)
	public String problemPlay(@RequestParam("language") String language, @RequestParam("num") int num, HttpServletRequest request, Model model) throws Exception {
//		if(sessioncontroller.sessionCheck(request) == "true") {
			problemVO problem = problemservice.readProblemByid(num);
			model.addAttribute("problem",problem);
			model.addAttribute("language",language);
			model.addAttribute("num", num);
			return "problem";
//		}
//		return "redirect:/login"; 
	}
	
	@RequestMapping(value = {"/test"}, method = RequestMethod.GET)
	public String test() throws Exception {
//		if(sessioncontroller.sessionCheck(request) == "true") {
			
			return "wrong_problem";
//		}
//		return "redirect:/login"; 
	}
	
	@RequestMapping(value = {"/play"}, method = RequestMethod.POST)
	public String problemPlayPost(@RequestParam("language") String language, @RequestParam("code") String code, @RequestParam("num") String num, HttpServletRequest request, Model model) throws Exception {
		if(sessioncontroller.sessionCheck(request) == "true") {
			System.out.println(num);
			problemVO problem = problemservice.readProblemByid(Integer.parseInt(num));
			String[] answers = problem.getanswer().split("\\.");
			for(int i=0;i<3;i++) {
				System.out.println(answers[i]);
			}
			HashMap<String, String> map = new HashMap<String, String>();
			for(int i=0;i<3;i++) {
				String[] data = answers[i].split(",");
				data[0] = data[0].replaceAll("\\{", "");
				data[1] = data[1].replaceAll("\\}", "");
				map.put(data[0].replaceAll("\"",""), data[1].replaceAll("\"",""));
			}

			judge0APIController judge0apiController = new judge0APIController();
			if(judge0apiController.check(map,language,code).equals("true")) {
				return "right_problem";
			}
			else {
				return "wrong_problem";
			}

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
