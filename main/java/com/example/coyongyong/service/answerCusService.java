package com.example.coyongyong.service;

import java.util.List;

import com.example.coyongyong.domain.answerCusVO;

public interface answerCusService {
	public answerCusVO readAnswerCus(int answerCusNum) throws Exception;
	public List<answerCusVO> readAnswerCusByQuestion(int questionNum) throws Exception;
	public List<answerCusVO> readAnswerCusList() throws Exception;
	public int countAnswerCus(List<answerCusVO> answerCus) throws Exception;
	public void addAnswerCus(answerCusVO answerCus) throws Exception;
	public int countLastAnswerCusNum() throws Exception;
	public void deleteAnswerCus(int answerCusNum) throws Exception;
	public void updateAnswerCus(answerCusVO answerCus) throws Exception;
}
