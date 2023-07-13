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
		
		/* c언어에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO Top1Level1inC() throws Exception;
		public questionVO Top2Level1inC() throws Exception;
		public questionVO Top3Level1inC() throws Exception;
		//레벨 2
		public questionVO Top1Level2inC() throws Exception;
		public questionVO Top2Level2inC() throws Exception;
		public questionVO Top3Level2inC() throws Exception;
		//레벨 3
		public questionVO Top1Level3inC() throws Exception;
		public questionVO Top2Level3inC() throws Exception;
		public questionVO Top3Level3inC() throws Exception;
		//레벨 4
		public questionVO Top1Level4inC() throws Exception;
		public questionVO Top2Level4inC() throws Exception;
		public questionVO Top3Level4inC() throws Exception;
		
		/* Python에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO Top1Level1inPython() throws Exception;
		public questionVO Top2Level1inPython() throws Exception;
		public questionVO Top3Level1inPython() throws Exception;
		//레벨 2
		public questionVO Top1Level2inPython() throws Exception;
		public questionVO Top2Level2inPython() throws Exception;
		public questionVO Top3Level2inPython() throws Exception;
		//레벨 3
		public questionVO Top1Level3inPython() throws Exception;
		public questionVO Top2Level3inPython() throws Exception;
		public questionVO Top3Level3inPython() throws Exception;
		//레벨 4
		public questionVO Top1Level4inPython() throws Exception;
		public questionVO Top2Level4inPython() throws Exception;
		public questionVO Top3Level4inPython() throws Exception;
		
		/* Java에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO Top1Level1inJava() throws Exception;
		public questionVO Top2Level1inJava() throws Exception;
		public questionVO Top3Level1inJava() throws Exception;
		//레벨 2
		public questionVO Top1Level2inJava() throws Exception;
		public questionVO Top2Level2inJava() throws Exception;
		public questionVO Top3Level2inJava() throws Exception;
		//레벨 3
		public questionVO Top1Level3inJava() throws Exception;
		public questionVO Top2Level3inJava() throws Exception;
		public questionVO Top3Level3inJava() throws Exception;
		//레벨 4
		public questionVO Top1Level4inJava() throws Exception;
		public questionVO Top2Level4inJava() throws Exception;
		public questionVO Top3Level4inJava() throws Exception;
	
}
