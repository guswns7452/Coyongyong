package com.example.coyongyong.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.example.coyongyong.service.customerService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private customerService customerService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	
	
	Date today = new Date();
	SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
	
	@GetMapping("/")
	public String home(Locale locale, Model model, HttpServletRequest request) {
		
		try {
			HttpSession session = request.getSession();
			customerVO customerVO = (customerVO)session.getAttribute("customer");
		}
		catch(Exception e){
			//로그인이 되어 있지 않으면 객체 등록이 되어있지 않은거
			//jsp에서는 logining 객체가 등록되어 있으면 -> 로그인 상태 / 없으면 -> 로그아웃 상태
			logger.info("로그인 되어있지 않음.");
		}
		
		return "main";
	}
	
	@GetMapping("/login")
	public String login() throws Exception {
		return "login";
	}
	
	@RequestMapping(value = {"/login"}, method = RequestMethod.POST)
	public String login(@ModelAttribute("customer") customerVO vo, HttpServletRequest request) throws Exception{
			//TODO 아이디 불일치시 예외처리
			customerVO customer = new customerVO();
			customer = customerService.getCustomerById(vo.getcustomerID());
			if(passwordEncoder.matches(vo.getcustomerPW(), customer.getcustomerPW())) {
				logger.info("로그인 성공");
				//세션 등록
				HttpSession session = request.getSession(); // 에러 발생할 수도 있음. 아닐 수도.
		        session.setAttribute("customer", customer);
		        session.setMaxInactiveInterval(1800); // 30분 동안 session 유지
			}
			else {
				logger.info("로그인 실패");
			}
		return "redirect:./";
	}
	
	@GetMapping("/signup")
	public String signup() throws Exception {
		return "signup";
	}
	
	public String ImageSetup(){
		ArrayList<String> imageList = new ArrayList<>();
		Random rand = new Random();
		
		imageList.add("appliance-repair.png");
	    imageList.add("fire_yongyong.png");
	    imageList.add("nicon.png");
	    imageList.add("uni.pmg");
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
	
	@RequestMapping(value = {"/signup"}, method = RequestMethod.POST)
	public String signup(@ModelAttribute("customer") customerVO vo, Model model) throws Exception{
		vo.setcustomerImage(ImageSetup()); vo.setcustomerLike(0); vo.settel("010-1234-5678"); vo.setlastChangedPwDay(date.format(today));
		
	
		int idx = vo.getcustomerPW().indexOf(","); 
		String pw = vo.getcustomerPW().substring(0, idx);
		logger.info(pw);
		vo.setcustomerPW(passwordEncoder.encode(pw));
		
		customerService.insertCustomer(vo);
		
		return "redirect:./";
	}
	
	@RequestMapping(value = {"/logout"}, method = RequestMethod.POST)
	public String logout(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		logger.info("로그아웃");
		session.invalidate(); // 세션 초기화
		return "redirect:./";
	}
	
	
}