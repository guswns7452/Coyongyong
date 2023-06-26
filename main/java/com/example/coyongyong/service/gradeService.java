package com.example.coyongyong.service;

import java.util.List;

import com.example.coyongyong.domain.gradeVO;

public interface gradeService {
	public gradeVO readGrade(int gradeNum) throws Exception;
	public List<gradeVO> readGradeList() throws Exception;
	public List<gradeVO> readGradeByCustomerID(String customerID) throws Exception;
	public int checkGradeBylanguage(String customerID, int languageNum) throws Exception;
	public void addGrade(gradeVO grade) throws Exception;
	public void deleteGrade(int gradeNum) throws Exception;
	public void updateGrade(gradeVO grade) throws Exception;
}
