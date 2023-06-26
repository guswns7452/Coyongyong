package com.example.coyongyong.service;

import java.util.List;

import com.example.coyongyong.domain.answerYongVO;

public interface answerYongService {
	public answerYongVO readAnswerYong(int answerYongNum) throws Exception;
	public answerYongVO readAnswerYongByQuestion(int questionNum) throws Exception;
	public List<answerYongVO> readAnswerYongList() throws Exception;
	public int countLastAnswerYongNum() throws Exception;
	public void addAnswerYong(answerYongVO answerYong) throws Exception;
	public void deleteAnswerYong(int answerYongNum) throws Exception;
	public void updateAnswerYong(answerYongVO answerYong) throws Exception;
}
