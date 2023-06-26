package com.example.coyongyong.domain;


public class problemVO {
	
	private int problemNum;
	private String problemContent;
	private String answer;
	private int grade;
	private int languageNum;
	
	public int getProblemNum() {
		return problemNum;
	}
	
	public void setProblemNum(int problemNum) {
		this.problemNum = problemNum;
	}
	
	public String getProblemContent() {
		return problemContent;
	}
	
	public void setProblemContent(String problemContent) {
		this.problemContent = problemContent;
	}
	
	public String getAnswer() {
		return answer;
	}
	
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	public int getGrade() {
		return grade;
	}
	
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	public int getLanguageNum() {
		return languageNum;
	}
	
	public void setLanguageNum(int languageNum) {
		this.languageNum = languageNum;
	}
	
	@Override
	public String toString() {
		return "problemVO [문제 번호=" + problemNum + ", 문제 내용=" + problemContent + ", 정답=" + answer + ", 등급=" + grade + ", 언어 번호=" + languageNum + "]";
	}
}
