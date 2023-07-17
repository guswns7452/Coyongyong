package com.example.coyongyong.controller;

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

import com.example.coyongyong.chatGPT.ChatController;
import com.example.coyongyong.domain.answerCusVO;
import com.example.coyongyong.domain.answerYongVO;
import com.example.coyongyong.domain.customerVO;
import com.example.coyongyong.domain.gradeVO;
import com.example.coyongyong.domain.questionVO;
import com.example.coyongyong.service.answerCusService;
import com.example.coyongyong.service.answerYongService;
import com.example.coyongyong.service.customerService;
import com.example.coyongyong.service.gradeService;
import com.example.coyongyong.service.questionService;

@Controller
@RequestMapping(value="/question")
public class questionController {
	private static final Logger logger = LoggerFactory.getLogger(questionController.class);
	
	@Autowired
	private questionService questionService;
	
	@Autowired
	private answerYongService answerYongService;
	
	@Autowired
	private answerCusService answerCusService;
	
	@Autowired
	private gradeService gradeService;
	
	@Autowired
	private customerService customerService;

	@Autowired
	private ChatController ChatController;
	
	@Autowired
	SessionController sessioncontroller;
	// 질문 글 번호를 어떻게 받아올 것?
	
	
	@RequestMapping(value = {"/questionlist"}, method = RequestMethod.GET)
	public String listMember(@RequestParam(required = false, defaultValue = "1") int page, Model model) throws Exception {
	    List<questionVO> questions = questionService.readQuestionList();
	    
	    int startIndex = (page - 1) * 10;
	    int endIndex = Math.min(startIndex + 10, questions.size());
	    List<questionVO> pageQuestions = questions.subList(startIndex, endIndex);
	    
	    logger.info("/question/QuestionList URL called. Then listquestion method executed.");
	    model.addAttribute("questions", pageQuestions);
	    
	    return "questionList"; // jsp 파일
	}
	
	@RequestMapping(value = {"/questionmain"}, method = RequestMethod.GET)
	public String questionMain(@RequestParam("language") String language, Model model) throws Exception {
	    List<questionVO> questions = questionService.readQuestionsTop();
	    logger.info("/question/QuestionMain URL called. Then listquestion method executed.");
  
		model.addAttribute("questions", questions);
		model.addAttribute("language", language);
	    
	    return "question_main"; // jsp 파일
	}
	
	@RequestMapping(value = {"/onequestion"}, method = RequestMethod.GET)
	public String oneQuestion(@RequestParam("num") int num, Model model) throws Exception{
		questionVO question = questionService.readQuestion(num);
		List<questionVO> questions = questionService.readQuestionList();
		answerYongVO yong = answerYongService.readAnswerYongByQuestion(num);
		List<answerCusVO> cus = answerCusService.readAnswerCusByQuestion(num);
		gradeVO grade = gradeService.readGrade(question.getgradeNum());
		
		logger.info(" /question/OneQuestion URL called. then listquestion method executed.");
		model.addAttribute("question", question);
		model.addAttribute("questions", questions);
		model.addAttribute("gradeCustomer", grade);
		yong.setanswerYongContent(yong.getanswerYongContent().replace("\n","<br>"));
		model.addAttribute("yongyong", yong);
		model.addAttribute("answerCus",cus);
		
		return "questionView";
	}
	
	@RequestMapping(value = {"/writequestion"}, method = RequestMethod.GET)
	public String writeQuestion(Model model,HttpServletRequest request) throws Exception{
		//customer 정보를 불러와야겠네요.
		if(sessioncontroller.sessionCheck(request) == "true") {
			logger.info(" /question/writequestion URL called. then listquestion method executed.");
			return "questionGenerate";
		}
		return "redirect:/login"; 
		
	}
	
	@RequestMapping(value = {"/writequestion"}, method = RequestMethod.POST)
	public String writeQuestionPost(@ModelAttribute("question") questionVO vo, @ModelAttribute("yongyong") answerYongVO vo2,HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		customerVO customerVO = (customerVO)session.getAttribute("customer");
		
		int questionNum = questionService.countLastQuestionNum() + 1; //이게 마지막 questionNum 이 되어야함
		vo.setquestionNum(questionNum); vo.setcustomerID(customerVO.getcustomerID()); vo.setquestionCount(0); vo.setquestionDate(); vo.setgradeNum(gradeService.checkGradeBylanguage(customerVO.getcustomerID(),vo.getquestionLanguageNum()));
		logger.info(Integer.toString(vo.getquestionLanguageNum()));
		questionService.addQuestion(vo);
		
		//용용이에게 보낼 String 바꾸기
		String sendString = "질문자 : " + vo.getcustomerID() + "질문 제목" + vo.getquestionTitle() + vo.getquestionContent() + "질문 코드" + vo.getquestionCode();
		logger.info(vo.toString());
		logger.info(" /question/writequestion URL called. then listquestion method executed.");
		
		
		String chat = ChatController.chat(sendString);
		logger.info(chat);
		int answerYongNum = answerYongService.countLastAnswerYongNum() + 1; //이게 마지막 AnswerYongNum 이 되어야함
		logger.info(Integer.toString(answerYongNum));
		
		// TODO 질문 키워드 뽑아내기
		vo2.setanswerYongNum(answerYongNum); vo2.setquestionNum(questionNum); vo2.setanswerYongCorrect(0); vo2.setanswerYongContent(chat.replace("\r\n","<br>")); vo2.setgradeNum(gradeService.checkGradeBylanguage("guswns7452",1)); vo2.setquestionKeyword("");
		answerYongService.addAnswerYong(vo2);
		
		return "redirect:/question/onequestion?num="+questionNum;
	}
}
