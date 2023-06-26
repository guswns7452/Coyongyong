package com.example.coyongyong.persistance;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coyongyong.domain.answerCusVO;

@Repository
public class answerCusDAOImpl implements answerCusDAO {

	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "com.example.coyongyong.mapper.answerCusMapper";

	public void add(answerCusVO answerCus) throws Exception {
		sqlSession.insert(namespace + ".insert", answerCus);
	}

	public List<answerCusVO> readList() throws Exception {
		List<answerCusVO> answerCuslist = new ArrayList<answerCusVO>();
		answerCuslist = sqlSession.selectList(namespace + ".selectAll");
		return answerCuslist;
	}

	public answerCusVO read(int answerCusNum) throws Exception {
		// INT라서 그런가?
		answerCusVO vo = sqlSession.selectOne(namespace + ".selectByid", answerCusNum);
		return vo;
	}

	public List<answerCusVO> readByQuestion(int questionNum) throws Exception{
		List<answerCusVO> answerCuslist = new ArrayList<answerCusVO>();
		answerCuslist = sqlSession.selectList(namespace + ".selectByQuestion" ,  questionNum);
		System.out.println(answerCuslist);
		return answerCuslist;
	}
	
	public void delete(int answerCusNum) throws Exception {
		sqlSession.delete(namespace + ".delete", answerCusNum);
	}

	public void update(answerCusVO answerCus) throws Exception {
		sqlSession.update(namespace + ".update", answerCus);
	}
}
