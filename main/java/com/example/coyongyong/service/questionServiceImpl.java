package com.example.coyongyong.service;

import java.util.List;

import com.example.coyongyong.domain.questionVO;
import com.example.coyongyong.persistance.questionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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
	
	public void addQuestion(questionVO question) throws Exception{
		questionDAO.add(question);
	}
	
		/* c언어에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO Top1Level1inC() throws Exception{
			return questionDAO.readTop1Level1inC();
		}
		public questionVO Top2Level1inC() throws Exception{
			return questionDAO.readTop2Level1inC();
		}
		public questionVO Top3Level1inC() throws Exception{
			return questionDAO.readTop3Level1inC();
		}
		//레벨 2
		public questionVO Top1Level2inC() throws Exception{
			return questionDAO.readTop1Level2inC();
		}
		public questionVO Top2Level2inC() throws Exception{
			return questionDAO.readTop2Level2inC();
		}
		public questionVO Top3Level2inC() throws Exception{
			return questionDAO.readTop3Level2inC();
		}
		//레벨 3
		public questionVO Top1Level3inC() throws Exception{
			return questionDAO.readTop1Level3inC();
		}
		public questionVO Top2Level3inC() throws Exception{
			return questionDAO.readTop2Level3inC();
		}
		public questionVO Top3Level3inC() throws Exception{
			return questionDAO.readTop3Level3inC();
		}
		//레벨 4
		public questionVO Top1Level4inC() throws Exception{
			return questionDAO.readTop1Level4inC();
		}
		public questionVO Top2Level4inC() throws Exception{
			return questionDAO.readTop2Level4inC();
		}
		public questionVO Top3Level4inC() throws Exception{
			return questionDAO.readTop3Level4inC();
		}
		
		/* Python에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO Top1Level1inPython() throws Exception{
			return questionDAO.readTop1Level1inPython();
		}
		public questionVO Top2Level1inPython() throws Exception{
			return questionDAO.readTop2Level1inPython();
		}
		public questionVO Top3Level1inPython() throws Exception{
			return questionDAO.readTop3Level1inPython();
		}
		//레벨 2
		public questionVO Top1Level2inPython() throws Exception{
			return questionDAO.readTop1Level2inPython();
		}
		public questionVO Top2Level2inPython() throws Exception{
			return questionDAO.readTop2Level2inPython();
		}
		public questionVO Top3Level2inPython() throws Exception{
			return questionDAO.readTop3Level2inPython();
		}
		//레벨 3
		public questionVO Top1Level3inPython() throws Exception{
			return questionDAO.readTop1Level3inPython();
		}
		public questionVO Top2Level3inPython() throws Exception{
			return questionDAO.readTop2Level3inPython();
		}
		public questionVO Top3Level3inPython() throws Exception{
			return questionDAO.readTop3Level3inPython();
		}
		//레벨 4
		public questionVO Top1Level4inPython() throws Exception{
			return questionDAO.readTop1Level4inPython();
		}
		public questionVO Top2Level4inPython() throws Exception{
			return questionDAO.readTop2Level4inPython();
		}
		public questionVO Top3Level4inPython() throws Exception{
			return questionDAO.readTop3Level4inPython();
		}
		
		/* Java에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO Top1Level1inJava() throws Exception{
			return questionDAO.readTop1Level1inJava();
		}
		public questionVO Top2Level1inJava() throws Exception{
			return questionDAO.readTop2Level1inJava();
		}
		public questionVO Top3Level1inJava() throws Exception{
			return questionDAO.readTop3Level1inJava();
		}
		//레벨 2
		public questionVO Top1Level2inJava() throws Exception{
			return questionDAO.readTop1Level2inJava();
		}
		public questionVO Top2Level2inJava() throws Exception{
			return questionDAO.readTop2Level2inJava();
		}
		public questionVO Top3Level2inJava() throws Exception{
			return questionDAO.readTop3Level2inJava();
		}
		//레벨 3
		public questionVO Top1Level3inJava() throws Exception{
			return questionDAO.readTop1Level3inJava();
		}
		public questionVO Top2Level3inJava() throws Exception{
			return questionDAO.readTop2Level3inJava();
		}
		public questionVO Top3Level3inJava() throws Exception{
			return questionDAO.readTop3Level3inJava();
		}
		//레벨 4
		public questionVO Top1Level4inJava() throws Exception{
			return questionDAO.readTop1Level4inJava();
		}
		public questionVO Top2Level4inJava() throws Exception{
			return questionDAO.readTop2Level4inJava();
		}
		public questionVO Top3Level4inJava() throws Exception{
			return questionDAO.readTop3Level4inJava();
		}
	
	
	public void deleteQuestion(int questionNum) throws Exception{
		questionDAO.delete(questionNum);
	}
	
//TODO 트랜잭션 나중에 할려면 하고 말려면 말고,
	public void updateQuestion(questionVO question) throws Exception{
		questionDAO.update(question);
	}


}