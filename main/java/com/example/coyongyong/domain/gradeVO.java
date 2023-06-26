package com.example.coyongyong.domain;

public class gradeVO {

	private int gradeNum;
	private int grade; // TODO 대체키이므로 그냥 바로 string으로 매핑하는 것도 좋음
	private String customerID;
	private int languageNum; // TODO 대체키이므로 그냥 바로 string으로 매핑하는 것도 좋음

	// 등급 번호
	public int getgradeNum() {
		return gradeNum;
	}
	public void setgradeNum(int gradeNum) {
		this.gradeNum = gradeNum;
	}

	// 등급
	public int getgrade() {
		return grade;
	}
	public void setgrade(int grade) {
		this.grade = grade;
	}

//	회원 아이디
	public String getcustomerID() {
		return customerID;
	}
	public void setcustomerID(String customerID) {
		this.customerID = customerID;
	}
	
	// 언어 번호
	// 1. C / 2. Python / 3. Java
	public int getlanguageNum() {
		return languageNum;
	}
	public void setlanguageNum(int languageNum) {
		this.languageNum = languageNum;
	}
}
