package com.example.coyongyong.persistance;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coyongyong.domain.gradeVO;
import com.example.coyongyong.domain.questionVO;

@Repository
public class questionDAOImpl implements questionDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.example.coyongyong.mapper.questionMapper";

	//추가 메소드
	@Override
	public void add(questionVO question) throws Exception{
		sqlSession.insert(namespace + ".insert", question);
	}
	
	//리스트화 메소드
	@Override
	public List<questionVO> readList() throws Exception{
		List<questionVO> quesionlist = new ArrayList<questionVO>();
		quesionlist = sqlSession.selectList(namespace + ".selectAll");
		return quesionlist;
	}
	
	//읽기 메소드
	@Override
	public questionVO read(int questionNum) throws Exception {
	    // 1. questionCount 조회
	    questionVO vo = sqlSession.selectOne(namespace + ".selectByid", questionNum);
	    
	    // 2. questionCount 증가
	    vo.setquestionCount(vo.getquestionCount() + 1);
	    
	    // 3. questionCount 업데이트
	    sqlSession.update(namespace + ".update", vo);
	    
	    return vo; 
	} 
	@Override
	public int readLastQuestionNum() throws Exception{
		// INT라서 그런가?
		int lastQuestionNum = sqlSession.selectOne(namespace+".selectLastQuestionNum");
		return lastQuestionNum; 
	}
	
	@Override
	public List<questionVO> readQuestionsTop() throws Exception{
		List<questionVO> questionlist = new ArrayList<questionVO>();
		List<questionVO> temp = new ArrayList<questionVO>();
		gradeVO grades = new gradeVO();
		int top,index;
		
		for(int languageNum=1; languageNum<=3; languageNum++) {
			for (int grade=1; grade<=4; grade++) {
				grades.setgrade(grade); grades.setlanguageNum(languageNum);
				temp = sqlSession.selectList(namespace + ".selectQuestionsTop", grades);
				for(top=1;top<=3;top++) {
					try {
						index = (languageNum-1) * 12 + (grade-1) * 3 + (top-1);
//						System.out.println("index : " + index + "languageNum : " + languageNum + " grade : " + grade + " top : " + top + " 내용\n" + temp.get(top-1)+"\n");
						questionlist.add(index, temp.get(top-1));
					}
					catch (Exception e){
						index = (languageNum-1) * 12 + (grade-1) * 3 + (top-1);
						questionlist.add(index, null);
//						System.out.println("index : " + index + "languageNum : " + languageNum + " grade : " + grade + "top : " + top + " null\n");
//						System.out.println(questionlist);
					}
				}
			}
		}
			
		return questionlist;
	}
	
	@Override
	public List<questionVO> readByLanguageNum(int questionLanguageNum) throws Exception{
		List<questionVO> questionlist = new ArrayList<questionVO>();
		questionlist = sqlSession.selectList(namespace + ".selectByLanguageNum", questionLanguageNum);
		
		return questionlist;
	}
	
	//삭제 요청
	@Override
	public void delete(int questionNum) throws Exception{
		sqlSession.delete(namespace + ".delete", questionNum);
	}
	
	//업데이트 요청
	public void update(questionVO question) throws Exception{
		sqlSession.update(namespace + ".update", question);
	}
}
