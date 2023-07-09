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
@RequestMapping(value="/mypage")
public class mypageController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	HttpServletRequest request;
	
	// 질문 글 번호를 어떻게 받아올 것?
	
	@GetMapping("/dashboard")
	public String mypage() throws Exception {
		return "mypage";
	}
	
	@GetMapping("/question")
	public String mypageQuestion() throws Exception {
		return "mypage_question";
	}
	
	@GetMapping("/study")
	public String mypageStudy() throws Exception {
		return "mypage_study";
	}
	
	@GetMapping("/problem")
	public String mypageProblem() throws Exception {
		return "mypage_problem";
	}
	
	
	
//	@RequestMapping(value = {"/writequestion"}, method = RequestMethod.POST)
//	public String writeQuestionPost(@ModelAttribute("question") questionVO vo, @ModelAttribute("yongyong") answerYongVO vo2) throws Exception{
//		//TODO 아이디 찾아내는 법
//		int questionNum = questionService.countLastQuestionNum() + 1; //이게 마지막 questionNum 이 되어야함
//		vo.setquestionNum(questionNum); vo.setcustomerID("전현준"); vo.setquestionCount(); vo.setquestionDate(); vo.setgradeNum(gradeService.checkGradeBylanguage("guswns7452",1));
//		questionService.addQuestion(vo);
//		logger.info(vo.toString());
//		logger.info(" /question/writequestion URL called. then listquestion method executed.");
//		
//		  
//		String chat = ChatController.chat(vo.toString());
//		logger.info(chat);
//		int answerYongNum = answerYongService.countLastAnswerYongNum() + 1; //이게 마지막 AnswerYongNum 이 되어야함
//		logger.info(Integer.toString(answerYongNum));
//		
//		// TODO 질문 키워드 뽑아내기
//		// TODO 질문 내용 어떻게 줄 개행?
//		// TODO 회원 뽑아내면 등급 뽑아내는 것 해야함 -> 아이디 찾아내기
//		vo2.setanswerYongNum(answerYongNum); vo2.setquestionNum(questionNum); vo2.setanswerYongCorrect(0); vo2.setanswerYongContent(chat.replace("\r\n","<br>")); vo2.setgradeNum(gradeService.checkGradeBylanguage("guswns7452",1)); vo2.setquestionKeyword("");
//		answerYongService.addAnswerYong(vo2);
//		return "redirect:./onequestion?num="+questionNum;
//	}
}
