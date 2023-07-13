package com.example.coyongyong.persistance;

import java.util.List;
import com.example.coyongyong.domain.questionVO;

public interface questionDAO {
	public void add(questionVO question) throws Exception;
	public List<questionVO> readList() throws Exception;
	public questionVO read(int questionNum) throws Exception;
	public int readLastQuestionNum() throws Exception;
	public void delete(int questionNum) throws Exception;
	public void update(questionVO question) throws Exception;
	
		/* c언어에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO readTop1Level1inC() throws Exception;
		public questionVO readTop2Level1inC() throws Exception;
		public questionVO readTop3Level1inC() throws Exception;
		//레벨 2
		public questionVO readTop1Level2inC() throws Exception;
		public questionVO readTop2Level2inC() throws Exception;
		public questionVO readTop3Level2inC() throws Exception;
		//레벨 3
		public questionVO readTop1Level3inC() throws Exception;
		public questionVO readTop2Level3inC() throws Exception;
		public questionVO readTop3Level3inC() throws Exception;
		//레벨 4
		public questionVO readTop1Level4inC() throws Exception;
		public questionVO readTop2Level4inC() throws Exception;
		public questionVO readTop3Level4inC() throws Exception;
		
		/* Python에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO readTop1Level1inPython() throws Exception;
		public questionVO readTop2Level1inPython() throws Exception;
		public questionVO readTop3Level1inPython() throws Exception;
		//레벨 2
		public questionVO readTop1Level2inPython() throws Exception;
		public questionVO readTop2Level2inPython() throws Exception;
		public questionVO readTop3Level2inPython() throws Exception;
		//레벨 3
		public questionVO readTop1Level3inPython() throws Exception;
		public questionVO readTop2Level3inPython() throws Exception;
		public questionVO readTop3Level3inPython() throws Exception;
		//레벨 4
		public questionVO readTop1Level4inPython() throws Exception;
		public questionVO readTop2Level4inPython() throws Exception;
		public questionVO readTop3Level4inPython() throws Exception;
		
		/* Java언어에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO readTop1Level1inJava() throws Exception;
		public questionVO readTop2Level1inJava() throws Exception;
		public questionVO readTop3Level1inJava() throws Exception;
		//레벨 2
		public questionVO readTop1Level2inJava() throws Exception;
		public questionVO readTop2Level2inJava() throws Exception;
		public questionVO readTop3Level2inJava() throws Exception;
		//레벨 3
		public questionVO readTop1Level3inJava() throws Exception;
		public questionVO readTop2Level3inJava() throws Exception;
		public questionVO readTop3Level3inJava() throws Exception;
		//레벨 4
		public questionVO readTop1Level4inJava() throws Exception;
		public questionVO readTop2Level4inJava() throws Exception;
		public questionVO readTop3Level4inJava() throws Exception;
	
}
