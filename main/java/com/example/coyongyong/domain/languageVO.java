package com.example.coyongyong.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class languageVO {
	
	private int languageNum;
	private String languageName;
	
//	회원 아이디	
	public int getlanguageNum() {
		return languageNum;
	}
	public void setlanguageNum(int languageNum) {
		this.languageNum = languageNum;
	}
	
//	질문 조회수	
	public String getlanguageName() {
		return languageName;
	}
	
	public void setlanguageName(String languageName) {
		this.languageName = languageName;
	}
	

	public String toString() {
		return "languageVO : [언어번호=" + Integer.toString(languageNum) + ", 언어=" + languageName + "]";
	}

}
