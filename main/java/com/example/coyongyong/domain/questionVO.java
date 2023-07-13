package com.example.coyongyong.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class questionVO {
	
	private int questionNum;
	private int questionCount;
	private String questionTitle;
	private String questionContent;
	private String questionDate;
	private String customerID;
	private int gradeNum;
	
//	회원 아이디	
	public int getquestionNum() {
		return questionNum;
	}
	public void setquestionNum(int questionNum) {
		this.questionNum = questionNum;
	}
	
//	질문 조회수	
	public int getquestionCount() {
		return questionCount;
	}
	//원래 set이었는데 초기화로 해야할 것 같아서 바꿨어
	public void initquestionCount() {
		questionCount = 0;
	}
	
	public void setquestionCount(int questionCount) {
		this.questionCount = questionCount;
	}
	
// questionTitle
	public String getquestionTitle() {
		return questionTitle;
	}
	public void setquestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	
//	questionContent
	public String getquestionContent() {
		return questionContent;
	}
	public void setquestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	
//	questionDate	
	public String getquestionDate() {
		return questionDate;
	}
	public void setquestionDate() {
		//TODO 아니면 오늘을 설정해도 될 것 같음. 그럼 매개변수를 Date로?
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String str = format.format(now);
		
        this.questionDate = str;
	}
	
//	회원 아이디
	public String getcustomerID() {
		return customerID;
	}
	// -> DB에 저장해야 하니까 set이 필요
	public void setcustomerID(String customerID) {
		this.customerID = customerID;
	}

//	등급 번호
//TODO 등급 번호에 따라서 컨트롤러에서 언어,등급 매핑해주는것도 괜찮을듯
	public int getgradeNum() {
		return gradeNum;
	}
	public void setgradeNum(int gradeNum) {
		//TODO 회원을 검색해서 그 사람의 gradeNum을 해도 되는데 controller에서 해도 될듯?
		this.gradeNum = gradeNum;
	}
	
	@Override
	public String toString() {
		return "QuestionVO [질문번호=" + Integer.toString(questionNum) + ", 조회수=" + Integer.toString(questionCount) + ", 질문 제목=" + questionTitle 
				 + ", 질문 내용=" + questionContent + ", 회원 아이디=" + customerID + ", 등급 번호 =" + Integer.toString(gradeNum) + "]";
	}

}
