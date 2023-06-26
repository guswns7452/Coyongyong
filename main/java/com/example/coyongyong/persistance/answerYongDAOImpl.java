package com.example.coyongyong.persistance;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coyongyong.domain.answerYongVO;

@Repository
public class answerYongDAOImpl implements answerYongDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.example.coyongyong.mapper.answerYongMapper";
	
	public void add(answerYongVO answerYong) throws Exception{
		sqlSession.insert(namespace + ".insert", answerYong);
		
	}
	public List<answerYongVO> readList() throws Exception{
		List<answerYongVO> answerYonglist = new ArrayList<answerYongVO>();
		answerYonglist = sqlSession.selectList(namespace + ".selectAll");
		return answerYonglist;
		
	}
	public answerYongVO read(int answerYongNum) throws Exception{
		// INT라서 그런가?
		answerYongVO vo = sqlSession.selectOne(namespace+".selectByid", answerYongNum);
		return vo; 
	}
	
	public answerYongVO readByQuestion(int questionNum) throws Exception{
		answerYongVO vo = sqlSession.selectOne(namespace+".selectByQuestion", questionNum);
		return vo; 
	}
	
	public int readLastAnswerYongNum() throws Exception{
		// INT라서 그런가?
		int lastAnswerYongNum = sqlSession.selectOne(namespace+".selectLastAnswerYongNum");
		return lastAnswerYongNum; 
	}
	
	public void delete(int answerYongNum) throws Exception{
		sqlSession.delete(namespace + ".delete", answerYongNum);
	}
	
	public void update(answerYongVO answerYong) throws Exception{
		sqlSession.update(namespace + ".update", answerYong);
	}
}
