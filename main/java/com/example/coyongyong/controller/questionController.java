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
@RequestMapping(value="/question")
public class questionController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	HttpServletRequest request;
	
	@Autowired
	private questionService questionService;
	
	@Autowired
	private answerYongService answerYongService;
	
	@Autowired
	private answerCusService answerCusService;
	
	@Autowired
	private gradeService gradeService;

	@Autowired
	private ChatController ChatController;
	
	// 질문 글 번호를 어떻게 받아올 것?
	
	
	@RequestMapping(value = {"/questionlist"}, method = RequestMethod.GET)
	public String listMember(@RequestParam(required = false, defaultValue = "1") int page, Model model) throws Exception {
	    List<questionVO> questions = questionService.readQuestionList();
	    
	    int startIndex = (page - 1) * 10;
	    int endIndex = Math.min(startIndex + 10, questions.size());
	    List<questionVO> pageQuestions = questions.subList(startIndex, endIndex);
	    
	    logger.info("/question/QuestionList URL called. Then listquestion method executed.");
	    model.addAttribute("questions", pageQuestions);
	    
	    return "question_main"; // jsp 파일
	}
	
	@RequestMapping(value = {"/questionmain"}, method = RequestMethod.GET)
	public String questionMain(@RequestParam("language") String language, Model model) throws Exception {
	    List<questionVO> questions = questionService.readQuestionsTop();
	    logger.info("/question/QuestionMain URL called. Then listquestion method executed.");
	    for(int languageNum=1; languageNum<=3; languageNum++) {
			for (int grade=1; grade<=4; grade++) {
				for(int top=1;top<=3;top++) {
					try {
						logger.info("languageNum : " + languageNum + " grade : " + grade + "top : " + top + questions.get((languageNum-1) * 12 + (grade-1) * 3 + top-1).toString());
					}
					catch (Exception e) {
						
					}
				}
			}
		}
	    
		model.addAttribute("questions", questions);
	    
	    return "question_main"; // jsp 파일
	}
	
	@RequestMapping(value = {"/onequestion"}, method = RequestMethod.GET)
	public String oneQuestion(@RequestParam("num") int num, Model model) throws Exception{
		questionVO question = questionService.readQuestion(num);
		List<questionVO> questions = questionService.readQuestionList();
		answerYongVO yong = answerYongService.readAnswerYongByQuestion(num);
		List<answerCusVO> cus = answerCusService.readAnswerCusByQuestion(num);
		
		logger.info(" /question/OneQuestion URL called. then listquestion method executed.");
		model.addAttribute("question", question);
		model.addAttribute("questions", questions);
		model.addAttribute("yongyong", yong);
		model.addAttribute("answerCus",cus);
		
		return "CP_CoP_oneQuestion";
	}
	
	@RequestMapping(value = {"/writequestion"}, method = RequestMethod.GET)
	public String writeQuestion(Model model) throws Exception{
		//customer 정보를 불러와야겠네요.
		logger.info(" /question/writequestion URL called. then listquestion method executed.");
		
		return "CP_CoP_questionGenerate";
	}
	
	@RequestMapping(value = {"/writequestion"}, method = RequestMethod.POST)
	public String writeQuestionPost(@ModelAttribute("question") questionVO vo, @ModelAttribute("yongyong") answerYongVO vo2) throws Exception{
		//TODO 아이디 찾아내는 법
		int questionNum = questionService.countLastQuestionNum() + 1; //이게 마지막 questionNum 이 되어야함
		vo.setquestionNum(questionNum); vo.setcustomerID("전현준"); vo.setquestionCount(questionNum); vo.setquestionDate(); vo.setgradeNum(gradeService.checkGradeBylanguage("guswns7452",1));
		questionService.addQuestion(vo);
		logger.info(vo.toString());
		logger.info(" /question/writequestion URL called. then listquestion method executed.");
		
		
		String chat = ChatController.chat(vo.toString());
		logger.info(chat);
		int answerYongNum = answerYongService.countLastAnswerYongNum() + 1; //이게 마지막 AnswerYongNum 이 되어야함
		logger.info(Integer.toString(answerYongNum));
		
		// TODO 질문 키워드 뽑아내기
		// TODO 질문 내용 어떻게 줄 개행?
		// TODO 회원 뽑아내면 등급 뽑아내는 것 해야함 -> 아이디 찾아내기
		vo2.setanswerYongNum(answerYongNum); vo2.setquestionNum(questionNum); vo2.setanswerYongCorrect(0); vo2.setanswerYongContent(chat.replace("\r\n","<br>")); vo2.setgradeNum(gradeService.checkGradeBylanguage("guswns7452",1)); vo2.setquestionKeyword("");
		answerYongService.addAnswerYong(vo2);
		return "redirect:./onequestion?num="+questionNum;
	}
}
