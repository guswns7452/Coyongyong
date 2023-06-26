package com.example.coyongyong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coyongyong.domain.answerYongVO;
import com.example.coyongyong.persistance.answerYongDAO;

@Service
public class answerYongServiceImpl implements answerYongService {
	
	@Autowired
	private answerYongDAO answerYongDAO;
	
	public answerYongVO readAnswerYong(int answerYongNum) throws Exception{
		return answerYongDAO.read(answerYongNum);
	}
	
	public answerYongVO readAnswerYongByQuestion(int questionNum) throws Exception{
		return answerYongDAO.readByQuestion(questionNum);
	}
	
	public List<answerYongVO> readAnswerYongList() throws Exception{
		return answerYongDAO.readList();
	}
	
	public int countLastAnswerYongNum() throws Exception{
		return answerYongDAO.readLastAnswerYongNum();
	}
	
	public void addAnswerYong(answerYongVO answerYong) throws Exception{
		answerYongDAO.add(answerYong);
	}
	
	public void deleteAnswerYong(int answerYongNum) throws Exception{
		answerYongDAO.delete(answerYongNum);
	}
	
	public void updateAnswerYong(answerYongVO answerYong) throws Exception{
		answerYongDAO.update(answerYong);
	}
}
