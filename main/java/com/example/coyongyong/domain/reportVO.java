package com.example.coyongyong.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class reportVO {
	
	private int reportNum;
	private String customerID;
	private String reportId;
	private int reportCount;
	private String reportDate;
	private String reportContent;
	private int reportTextNum;
	private String boardCategory;
	private boolean reportAcceptance;
	
	public int getReportNum() {
		return reportNum;
	}
	
	public void setReportNum(int reportNum) {
		this.reportNum = reportNum;
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	
	public String getReportId() {
		return reportId;
	}
	
	public void setReportId(String reportId) {
		this.reportId = reportId;
	}
	
	public int getReportCount() {
		return reportCount;
	}
	
	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}
	
	public String getReportDate() {
		return reportDate;
	}
	
	public void setReportDate() {
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String str = format.format(now);
		
		this.reportDate = str;
	}
	
	public String getReportContent() {
		return reportContent;
	}
	
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	
	public int getReportTextNum() {
		return reportTextNum;
	}
	
	public void setReportTextNum(int reportTextNum) {
		this.reportTextNum = reportTextNum;
	}
	
	public String getBoardCategory() {
		return boardCategory;
	}
	
	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
	}
	
	public boolean isReportAcceptance() {
		return reportAcceptance;
	}
	
	public void setReportAcceptance(boolean reportAcceptance) {
		this.reportAcceptance = reportAcceptance;
	}
	
	@Override
	public String toString() {
		return "reportVO [신고 번호=" + reportNum + ", 회원 아이디=" + customerID + ", 신고자 아이디=" + reportId + ", 신고 횟수=" + reportCount
				+ ", 신고 일자=" + reportDate + ", 신고 내용=" + reportContent + ", 신고 대상 번호=" + reportTextNum
				+ ", 게시판 카테고리=" + boardCategory + ", 신고 처리 여부=" + reportAcceptance + "]";
	}
}
