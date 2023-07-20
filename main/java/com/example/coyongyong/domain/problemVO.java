package com.example.coyongyong.domain;


public class problemVO {
	
	private int problemNum;
	private String problemContent;
	private String answer;
	private int grade;
	private int languageNum;
	private String problemTitle;
	private String problemInput;
	private String problemOutput;
	private String problemExample;
	
	public int getproblemNum() {
		return problemNum;
	}
	
	public void setproblemNum(int problemNum) {
		this.problemNum = problemNum;
	}
	
	public String getproblemContent() {
		return problemContent;
	}
	
	public void setproblemContent(String problemContent) {
		this.problemContent = problemContent;
	}
	
	public String getanswer() {
		return answer;
	}
	
	public void setanswer(String answer) {
		this.answer = answer;
	}
	
	public int getgrade() {
		return grade;
	}
	
	public void setgrade(int grade) {
		this.grade = grade;
	}
	
	public int getlanguageNum() {
		return languageNum;
	}
	
	public void setlanguageNum(int languageNum) {
		this.languageNum = languageNum;
	}
	
	public void setproblemTitle(String problemTitle) {
		this.problemTitle = problemTitle;
	}
	
	public String getproblemTitle() {
		return problemTitle;
	}
	
	public void setproblemInput(String problemInput) {
		this.problemInput = problemInput;
	}
	
	public String getproblemInput() {
		return problemInput;
	}
	
	public void setproblemOutput(String problemOutput) {
		this.problemOutput = problemOutput;
	}
	
	public String getproblemOutput() {
		return problemOutput;
	}
	
	public void setproblemExample(String problemExample) {
		this.problemExample = problemExample;
	}
	
	public String getproblemExample() {
		return problemExample;
	}
	@Override
	public String toString() {
		return "problemVO [문제 번호=" + problemNum + ", 문제 내용=" + problemContent + ", 정답=" + answer + ", 등급=" + grade + ", 언어 번호=" + languageNum + "]";
	}
}
