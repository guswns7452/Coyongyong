package com.example.coyongyong.domain;

public class answerCusVO {

	private int answerCusNum;
	private int questionNum;
	private int gradeNum;
	private String answerCusTitle;
	private String answerCusCode;
	private String answerCusContent;
	private int answerCusLike;
	private int answerCusUnlike;
	private String customerID;
	
	public String getanswerCusTitle() {
		return answerCusTitle;
	}
	
	public void setanswerCusTitle(String answerCusTitle) {
		this.answerCusTitle = answerCusTitle;
	}
	
	public String getanswerCusCode() {
		return answerCusCode;
	}
	
	public void setanswerCusCode(String answerCusCode) {
		this.answerCusCode = answerCusCode;
	}
	
	// 회원 답변 번호
	public int getanswerCusNum() {
		return answerCusNum;
	}

	public void setanswerCusNum(int answerCusNum) {
		this.answerCusNum = answerCusNum;
	}

	
	// 질문글 번호
	public int getquestionNum() {
		return questionNum;
	}

	public void setquestionNum(int questionNum) {
		this.questionNum = questionNum;
	}

	
	// 회원 채택 횟수
	public int getanswerCusLike() {
		return answerCusLike;
	}

	// TODO 두개 메소드로 나눠도 될듯? 증가 감소
	public void setanswerCusLike(int answerCusLike) {
		this.answerCusLike = answerCusLike;
	}

	
	// 회원 채택 횟수
	public int getanswerCusUnlike() {
		return answerCusUnlike;
	}

	// TODO 두개 메소드로 나눠도 될듯? 증가 감소
	public void setanswerCusUnlike(int answerCusUnlike) {
		this.answerCusUnlike = answerCusUnlike;
	}

	
	// 회원 내용
	public String getanswerCusContent() {
		return answerCusContent;
	}

	public void setanswerCusContent(String answerCusContent) {
		this.answerCusContent = answerCusContent;
	}

	
	// 등급 번호
	public int getgradeNum() {
		return gradeNum;
	}

	public void setgradeNum(int gradeNum) {
		this.gradeNum = gradeNum;
	}

	
	// 회원 아이디
	public String getcustomerID() {
		return customerID;
	}

	public void setcustomerID(String customerID) {
		this.customerID = customerID;
	}
}
