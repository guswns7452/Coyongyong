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
	public questionVO read(int questionNum) throws Exception{
		// INT라서 그런가?
		questionVO vo = sqlSession.selectOne(namespace+".selectByid", questionNum);
		return vo; 
	}
	
	public int readLastQuestionNum() throws Exception{
		// INT라서 그런가?
		int lastQuestionNum = sqlSession.selectOne(namespace+".selectLastQuestionNum");
		return lastQuestionNum; 
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
