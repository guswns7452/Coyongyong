package com.example.coyongyong.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class studyVO {
	
	private int studyNum;
	private String customerID;
	private int gradeNum;
	private String studyTitle;
	private String studyContent;
	private int goodCount;
	private String studyDate;
	private String studyCode;
	private int studyCount;
	
	public int getStudyNum() {
		return studyNum;
	}
	
	public void setStudyNum(int studyNum) {
		this.studyNum = studyNum;
	}
	
	public int getStudyCount() {
		return studyCount;
	}
	
	public void setStudyCount(int studyCount) {
		this.studyCount = studyCount;
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	
	public int getGradeNum() {
		return gradeNum;
	}
	
	public void setGradeNum(int gradeNum) {
		this.gradeNum = gradeNum;
	}
	
	public String getStudyTitle() {
		return studyTitle;
	}
	
	public void setStudyTitle(String studyTitle) {
		this.studyTitle = studyTitle;
	}
	
	public String getStudyContent() {
		return studyContent;
	}
	
	public void setStudyContent(String studyContent) {
		this.studyContent = studyContent;
	}
	
	public int getGoodCount() {
		return goodCount;
	}
	
	public void setGoodCount(int goodCount) {
		this.goodCount = goodCount;
	}
	
	public String getStudyDate() {
		return studyDate;
	}
	
	public String getStudyCode() {
		return studyCode;
	}
	
	public void setStudyCode(String studyCode) {
		this.studyCode = studyCode;
	}
	
	public void setStudyDate() {
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String str = format.format(now);
		
		this.studyDate = str;
	}
	
	@Override
	public String toString() {
		return "studyVO [스터디 번호=" + studyNum + ", 회원 아이디=" + customerID + ", 등급 번호=" + gradeNum + ", 스터디 제목=" + studyTitle
				+ ", 스터디 내용=" + studyContent + ", 좋아요 수=" + goodCount + ", 스터디 일자=" + studyDate + "]";
	}
}
