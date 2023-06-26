package com.example.coyongyong.persistance;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coyongyong.domain.gradeVO;

@Repository
public class gradeDAOImpl implements gradeDAO{
	
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.example.coyongyong.mapper.gradeMapper";

	
	public void add(gradeVO grade) throws Exception{
		sqlSession.insert(namespace + ".insert", grade);
	}
	
	public List<gradeVO> readList() throws Exception{
		List<gradeVO> gradelist = new ArrayList<gradeVO>();
		gradelist = sqlSession.selectList(namespace + ".selectAll");
		return gradelist;
	}
	
	public gradeVO read(int gradeNum) throws Exception{
		// INT라서 그런가?
		gradeVO vo = sqlSession.selectOne(namespace+".selectByid", gradeNum);
		return vo;
	}
	

	public List<gradeVO> readByID(String customerID) throws Exception{
		List<gradeVO> gradelist = new ArrayList<gradeVO>();
		gradelist = sqlSession.selectList(namespace + ".selectByCustomerID", customerID);
		
		return gradelist;
	}
	
	//테스트 필요함
	public int readByLanguage(Map<String, Object> parameters) throws Exception{
		int grade = sqlSession.selectOne(namespace+".selectByLanguage", parameters);
		return grade;
	}
	
	public void delete(int gradeNum) throws Exception{
		sqlSession.delete(namespace + ".delete", gradeNum);
	}
	
	public void update(gradeVO grade) throws Exception{
		sqlSession.update(namespace + ".update", grade);
	}
}
