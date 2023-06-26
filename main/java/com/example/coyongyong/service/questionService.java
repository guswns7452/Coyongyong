package com.example.coyongyong.service;

import java.util.List;
import com.example.coyongyong.domain.questionVO;

public interface questionService {
	public questionVO readQuestion(int questionNum) throws Exception;
	public List<questionVO> readQuestionList() throws Exception;
	public int countQuestion(List<questionVO> questions) throws Exception;
	public int countLastQuestionNum() throws Exception;
	public void addQuestion(questionVO question) throws Exception;
	public void deleteQuestion(int questionNum) throws Exception;
	public void updateQuestion(questionVO question) throws Exception;
	
}
