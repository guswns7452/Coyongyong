package com.example.coyongyong.persistance;

import java.util.List;
import java.util.Map;

import com.example.coyongyong.domain.gradeVO;

public interface gradeDAO {
	public void add(gradeVO grade) throws Exception;
	public List<gradeVO> readList() throws Exception;
	public gradeVO read(int gradeNum) throws Exception;
	public List<gradeVO> readByID(String customerID) throws Exception;
	public int readByLanguage(Map<String, Object> parameters) throws Exception;
	public void delete(int gradeNum) throws Exception;
	public void update(gradeVO grade) throws Exception;

}
