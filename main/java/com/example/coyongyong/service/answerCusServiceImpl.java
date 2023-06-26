package com.example.coyongyong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coyongyong.domain.answerCusVO;
import com.example.coyongyong.persistance.answerCusDAO;

@Service
public class answerCusServiceImpl implements answerCusService{

	@Autowired
	private answerCusDAO answerCusDAO;
	
	public answerCusVO readAnswerCus(int answerCusNum) throws Exception{
		return answerCusDAO.read(answerCusNum);
	}
	
	public List<answerCusVO> readAnswerCusByQuestion(int questionNum) throws Exception{
		return answerCusDAO.readByQuestion(questionNum);
	}
	
	public int countAnswerCus(List<answerCusVO> answerCus) throws Exception{
		return answerCus.size();
	}
	
	public List<answerCusVO> readAnswerCusList() throws Exception{
		return answerCusDAO.readList();
	}
	
	public void addAnswerCus(answerCusVO answerCus) throws Exception{
		answerCusDAO.add(answerCus);
	}
	
	public void deleteAnswerCus(int answerCusNum) throws Exception{
		answerCusDAO.delete(answerCusNum);
	}
	
	public void updateAnswerCus(answerCusVO answerCus) throws Exception{
		answerCusDAO.update(answerCus);
	}
}
