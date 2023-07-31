package com.example.coyongyong.persistance;

import java.util.List;

import com.example.coyongyong.domain.questionVO;

public interface questionDAO {
	public void add(questionVO question) throws Exception;
	public List<questionVO> readList() throws Exception;
	public questionVO read(int questionNum) throws Exception;
	public int readLastQuestionNum() throws Exception;
	public List<questionVO> readByLanguageNum(int questionLanguageNum) throws Exception;
	public List<questionVO> readByquestionMainTop() throws Exception;
	public List<questionVO> readByQuestionsMainDesc() throws Exception;
	public void delete(int questionNum) throws Exception;
	public void update(questionVO question) throws Exception;
	public List<questionVO> readQuestionsTop() throws Exception;

}
