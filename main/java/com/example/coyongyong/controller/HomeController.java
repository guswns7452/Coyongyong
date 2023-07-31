package com.example.coyongyong.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.coyongyong.domain.customerVO;
import com.example.coyongyong.domain.gradeVO;
import com.example.coyongyong.domain.questionVO;
import com.example.coyongyong.service.customerService;
import com.example.coyongyong.service.gradeService;
import com.example.coyongyong.service.questionService;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private customerService customerService;

	@Autowired
	private gradeService gradeService;

	@Autowired
	private questionService questionService;

	@Autowired
	private PasswordEncoder passwordEncoder;

	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");

	@GetMapping("/")
	public String home(Locale locale, Model model, HttpServletRequest request) {
		try {
			HttpSession session = request.getSession();
			customerVO customerVO = (customerVO) session.getAttribute("customer");

		} catch (Exception e) {
			// 로그인이 되어 있지 않으면 객체 등록이 되어있지 않은거
			// jsp에서는 logining 객체가 등록되어 있으면 -> 로그인 상태 / 없으면 -> 로그아웃 상태
			logger.info("로그인 되어있지 않음.");
		}

		List<questionVO> questionsTop = null;
		List<questionVO> questions = null;
		List<questionVO> questionTemp = new ArrayList<questionVO>();
		try {
			questionsTop = questionService.readByquestionMainTop();
			questions = questionService.readByQuestionsMainDesc();

			for (int i = 0; i < 4; i++) {
				Random rand = new Random();
				questionTemp.add(questions.get(rand.nextInt(questions.size())));
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("TodaysQuesiton", questionsTop);
		model.addAttribute("questions", questions);
		model.addAttribute("questionTemp", questionTemp);

		return "main";
	}

	@GetMapping("/login")
	public String login() throws Exception {
		return "login";
	}

	@RequestMapping(value = { "/login" }, method = RequestMethod.POST)
	public String login(@ModelAttribute("customer") customerVO vo, HttpServletRequest request) throws Exception {
		// TODO 아이디 불일치시 예외처리
		customerVO customer = new customerVO();
		customer = customerService.getCustomerById(vo.getcustomerID());
		if (passwordEncoder.matches(vo.getcustomerPW(), customer.getcustomerPW())) {
			logger.info("로그인 성공");
			// 세션 등록
			HttpSession session = request.getSession(); // 에러 발생할 수도 있음. 아닐 수도.
			session.setAttribute("customer", customer);
			session.setMaxInactiveInterval(1800); // 30분 동안 session 유지
		} else {
			logger.info("로그인 실패");
		}
		return "redirect:./";
	}

	@GetMapping("/signup")
	public String signup() throws Exception {
		return "signup";
	}

	public String ImageSetup() {
		ArrayList<String> imageList = new ArrayList<>();
		Random rand = new Random();

		imageList.add("appliance-repair.png");
		imageList.add("fire_yongyong.png");
		imageList.add("nicon.png");
		imageList.add("uni.png");
		imageList.add("water_nicon.png");
		imageList.add("water_yongyong.png");
		imageList.add("yongsun_makeup.png");
		imageList.add("yongsun.png");
		imageList.add("yongyong_nicon.png");
		imageList.add("yongyong.png");

		int randomIndex = rand.nextInt(imageList.size());
		String randomElement = imageList.get(randomIndex);

		return randomElement;
	}

	@RequestMapping(value = { "/signup" }, method = RequestMethod.POST)
	public String signup(@ModelAttribute("customer") customerVO vo, Model model) throws Exception {
		// 객체 등록중
		vo.setcustomerImage(ImageSetup());
		vo.setcustomerLike(0);
		vo.settel("010-1234-5678");
		vo.setlastChangedPwDay(date.format(today));

		// 비밀번호 확인
		// TODO 비밀번호 틀렸을때 js로
		int idx = vo.getcustomerPW().indexOf(",");
		String pw = vo.getcustomerPW().substring(0, idx);
		logger.info(pw);
		vo.setcustomerPW(passwordEncoder.encode(pw));

		customerService.insertCustomer(vo);

		// 등급 부여
		gradeVO grade = new gradeVO();
		int lastGradeNum = gradeService.countLastGradeNum() + 1;
		for (int i = 1; i <= 3; i++) {
			grade.setgradeNum(lastGradeNum++);
			grade.setcustomerID(vo.getcustomerID());
			grade.setgrade(1);
			grade.setlanguageNum(i);
			gradeService.addGrade(grade);
		}

		return "redirect:./";
	}

	@RequestMapping(value = { "/logout" }, method = RequestMethod.POST)
	public String logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		logger.info("로그아웃");
		session.invalidate(); // 세션 초기화
		return "redirect:./";
	}

}