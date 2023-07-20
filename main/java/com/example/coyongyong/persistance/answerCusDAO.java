package com.example.coyongyong.persistance;

import java.util.List;

import com.example.coyongyong.domain.answerCusVO;

public interface answerCusDAO {
	public void add(answerCusVO answerCus) throws Exception;
	public List<answerCusVO> readList() throws Exception;
	public answerCusVO read(int answerCusNum) throws Exception;
	public List<answerCusVO> readByQuestion(int questionNum) throws Exception;
	public int readLastAnswerCusNum() throws Exception;
	public void delete(int answerCusNum) throws Exception;
	public void update(answerCusVO answerCus) throws Exception;
}
