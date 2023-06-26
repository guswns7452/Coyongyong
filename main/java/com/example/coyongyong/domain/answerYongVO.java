package com.example.coyongyong.domain;

public class answerYongVO {

	private int answerYongNum;
	private int questionNum;
	private int gradeNum;
	private String answerYongContent;
	private int answerYongCorrect; //코용용 채택 횟수
	private String questionKeyword;
	
	//용용이 답변 번호
	public int getanswerYongNum() {
		return answerYongNum;
	}
	public void setanswerYongNum(int answerYongNum) {
		this.answerYongNum = answerYongNum;	
	}
	
	//질문글 번호
	public int getquestionNum() {
		return questionNum;
	}
	public void setquestionNum(int questionNum) {
		this.questionNum = questionNum;	
	}
	
	//용용이 채택 횟수
	public int getanswerYongCorrect() {
		return answerYongCorrect;
	}
	//TODO 두개 메소드로 나눠도 될듯? 증가 감소
	public void setanswerYongCorrect(int answerYongCorrect) {
		this.answerYongCorrect = answerYongCorrect;	
	}
	
	//용용이 내용
	public String getanswerYongContent() {
		return answerYongContent;
	}
	public void setanswerYongContent(String answerYongContent) {
		this.answerYongContent = answerYongContent;	
	}
	
	//등급 번호
	public int getgradeNum() {
		return gradeNum;
	}
	public void setgradeNum(int gradeNum) {
		this.gradeNum = gradeNum;	
	}
	
	// 질문 키워드
	public String getquestionKeyword() {
		return questionKeyword;
	}
	public void setquestionKeyword(String questionKeyword) {
		this.questionKeyword = questionKeyword;
	}
	
}
