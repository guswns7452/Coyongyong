package com.example.coyongyong.service;

import java.util.List;

import com.example.coyongyong.domain.submitVO;

public interface submitService {
	void submitAnswer(submitVO submit) throws Exception;
	submitVO getSubmitByNum(int submitNum) throws Exception;
	submitVO getSubmitById(String customerID) throws Exception;
	List<submitVO> getSubmitsByIdAndCorrect(String customerID, boolean correct) throws Exception;
	List<submitVO> getAllSubmits() throws Exception;
	void updateSubmit(submitVO submit) throws Exception;
	void deleteSubmit(int submitNum) throws Exception;
}
