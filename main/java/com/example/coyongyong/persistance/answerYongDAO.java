package com.example.coyongyong.persistance;

import java.util.List;
import com.example.coyongyong.domain.answerYongVO;


public interface answerYongDAO {
	public void add(answerYongVO answerYong) throws Exception;
	public List<answerYongVO> readList() throws Exception;
	public answerYongVO read(int answerYongNum) throws Exception;
	public answerYongVO readByQuestion(int questionNum) throws Exception;
	public int readLastAnswerYongNum() throws Exception;
	public void delete(int answerYongNum) throws Exception;
	public void update(answerYongVO answerYong) throws Exception;
}
