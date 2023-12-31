package com.example.coyongyong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coyongyong.domain.questionVO;
import com.example.coyongyong.persistance.questionDAO;

@Service
public class questionServiceImpl implements questionService {
	
	@Autowired
	private questionDAO questionDAO;

	public questionVO readQuestion(int questionNum) throws Exception{
		return questionDAO.read(questionNum);
	}
	
	public List<questionVO> readQuestionList() throws Exception{
		return questionDAO.readList();
	}
	
	// 질문 개수 세기
	public int countQuestion(List<questionVO> questions) throws Exception{
		return questions.size();
	}
	
	public int countLastQuestionNum() throws Exception{
		return questionDAO.readLastQuestionNum();
	}
	
	public List<questionVO> readByLanguageNum(int questionLanguageNum) throws Exception{
		return questionDAO.readByLanguageNum(questionLanguageNum);
	}
	
	public List<questionVO> readByquestionMainTop() throws Exception{
		return questionDAO.readByquestionMainTop();
	}
	
	public List<questionVO> readByQuestionsMainDesc() throws Exception{
		return questionDAO.readByQuestionsMainDesc();
	}
	
	public void addQuestion(questionVO question) throws Exception{
		questionDAO.add(question);
	}

	public List<questionVO> readQuestionsTop() throws Exception{
		return questionDAO.readQuestionsTop();
	}
	
	public void deleteQuestion(int questionNum) throws Exception{
		questionDAO.delete(questionNum);
	}
	
//TODO 트랜잭션 나중에 할려면 하고 말려면 말고,
	public void updateQuestion(questionVO question) throws Exception{
		questionDAO.update(question);
	}


}