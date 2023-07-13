package com.example.coyongyong.persistance;

import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coyongyong.domain.questionVO;

@Repository
public class questionDAOImpl implements questionDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.example.coyongyong.mapper.questionMapper";

	//추가 메소드
	public void add(questionVO question) throws Exception{
		sqlSession.insert(namespace + ".insert", question);
	}
	
	//리스트화 메소드
	public List<questionVO> readList() throws Exception{
		List<questionVO> quesionlist = new ArrayList<questionVO>();
		quesionlist = sqlSession.selectList(namespace + ".selectAll");
		return quesionlist;
	}
	
	//읽기 메소드
	public questionVO read(int questionNum) throws Exception {
	    // 1. questionCount 조회
	    questionVO vo = sqlSession.selectOne(namespace + ".selectByid", questionNum);
	    
	    // 2. questionCount 증가
	    vo.setquestionCount(vo.getquestionCount() + 1);
	    
	    // 3. questionCount 업데이트
	    sqlSession.update(namespace + ".update", vo);
	    
	    return vo; 
	} 
	
	public int readLastQuestionNum() throws Exception{
		// INT라서 그런가?
		int lastQuestionNum = sqlSession.selectOne(namespace+".selectLastQuestionNum");
		return lastQuestionNum; 
	}
	
	
		/* c언어에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO readTop1Level1inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level1inC");
			return vo;
		}
		public questionVO readTop2Level1inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level1inC");
			return vo;
		}
		public questionVO readTop3Level1inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level1inC");
			return vo;
		}
		//레벨 2
		public questionVO readTop1Level2inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level2inC");
			return vo;
		}
		public questionVO readTop2Level2inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level2inC");
			return vo;
		}
		public questionVO readTop3Level2inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level2inC");
			return vo;
		}
		//레벨 3
		public questionVO readTop1Level3inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level3inC");
			return vo;
		}
		public questionVO readTop2Level3inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level3inC");
			return vo;
		}
		public questionVO readTop3Level3inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level3inC");
			return vo;
		}
		//레벨 4
		public questionVO readTop1Level4inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level4inC");
			return vo;
		}
		public questionVO readTop2Level4inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level4inC");
			return vo;
		}
		public questionVO readTop3Level4inC() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level4inC");
			return vo;
		}
		
		/* Python에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO readTop1Level1inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level1inPython");
			return vo;
		}
		public questionVO readTop2Level1inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level1inPython");
			return vo;
		}
		public questionVO readTop3Level1inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level1inPython");
			return vo;
		}
		//레벨 2
		public questionVO readTop1Level2inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level2inPython");
			return vo;
		}
		public questionVO readTop2Level2inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level2inPython");
			return vo;
		}
		public questionVO readTop3Level2inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level2inPython");
			return vo;
		}
		//레벨 3
		public questionVO readTop1Level3inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level3inPython");
			return vo;
		}
		public questionVO readTop2Level3inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level3inPython");
			return vo;
		}
		public questionVO readTop3Level3inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level3inPython");
			return vo;
		}
		//레벨 4
		public questionVO readTop1Level4inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level4inPython");
			return vo;
		}
		public questionVO readTop2Level4inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level4inPython");
			return vo;
		}
		public questionVO readTop3Level4inPython() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level4inPython");
			return vo;
		}
		
		/* Java에서 top 1~3 뽑아내기 */
		//레벨 1
		public questionVO readTop1Level1inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level1inJava");
			return vo;
		}
		public questionVO readTop2Level1inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level1inJava");
			return vo;
		}
		public questionVO readTop3Level1inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level1inJava");
			return vo;
		}
		//레벨 2
		public questionVO readTop1Level2inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level2inJava");
			return vo;
		}
		public questionVO readTop2Level2inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level2inJava");
			return vo;
		}
		public questionVO readTop3Level2inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level2inJava");
			return vo;
		}
		//레벨 3
		public questionVO readTop1Level3inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level3inJava");
			return vo;
		}
		public questionVO readTop2Level3inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level3inJava");
			return vo;
		}
		public questionVO readTop3Level3inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level3inJava");
			return vo;
		}
		//레벨 4
		public questionVO readTop1Level4inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop1Level4inJava");
			return vo;
		}
		public questionVO readTop2Level4inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop2Level4inJava");
			return vo;
		}
		public questionVO readTop3Level4inJava() throws Exception{
			questionVO vo = sqlSession.selectOne(namespace + ".selectTop3Level4inJava");
			return vo;
		}
	
	//삭제 요청
	public void delete(int questionNum) throws Exception{
		sqlSession.delete(namespace + ".delete", questionNum);
	}
	
	//업데이트 요청
	public void update(questionVO question) throws Exception{
		sqlSession.update(namespace + ".update", question);
	}
}
