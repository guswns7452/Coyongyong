package com.example.coyongyong.domain;

public class submitVO {
	
	private int submitNum;
	private int gradeNum;
	private int problemNum;
	private String customerAnswer;
	private boolean correct;
	private String customerID;
	
	public int getSubmitNum() {
		return submitNum;
	}
	
	public void setSubmitNum(int submitNum) {
		this.submitNum = submitNum;
	}
	
	public int getGradeNum() {
		return gradeNum;
	}
	
	public void setGradeNum(int gradeNum) {
		this.gradeNum = gradeNum;
	}
	
	public int getProblemNum() {
		return problemNum;
	}
	
	public void setProblemNum(int problemNum) {
		this.problemNum = problemNum;
	}
	
	public String getCustomerAnswer() {
		return customerAnswer;
	}
	
	public void setCustomerAnswer(String customerAnswer) {
		this.customerAnswer = customerAnswer;
	}
	
	public boolean isCorrect() {
		return correct;
	}
	
	public void setCorrect(boolean correct) {
		this.correct = correct;
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	
	@Override
	public String toString() {
		return "submitVO [제출 번호=" + submitNum + ", 등급 번호=" + gradeNum + ", 문제 번호=" + problemNum + ", 고객 답안=" + customerAnswer
				+ ", 정답 여부=" + correct + ", 고객 아이디=" + customerID + "]";
	}
}
