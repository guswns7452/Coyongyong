package com.example.coyongyong.persistance;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coyongyong.domain.problemVO;

@Repository
public class problemDAOImpl implements problemDAO {

    private static final String namespace = "com.example.coyongyong.mapper.problemMapper";

    private final SqlSession sqlSession;

    @Autowired
    public problemDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void insert(problemVO problem) throws Exception {
        sqlSession.insert(namespace + ".insert", problem);
    }

    @Override
    public problemVO selectByid(int problemNum) throws Exception {
        return sqlSession.selectOne(namespace + ".selectByid", problemNum);
    }

    @Override
    public List<problemVO> selectByGradeAndLanguage(int grade, int languageNum) throws Exception {
        problemVO problem = new problemVO();
        problem.setgrade(grade);
        problem.setlanguageNum(languageNum);
        return sqlSession.selectList(namespace + ".selectByGradeAndLanguage", problem);
    }

    @Override
    public List<problemVO> selectAll() throws Exception {
    	System.out.println("DAO : "+sqlSession.selectList(namespace + ".selectAll"));
        return sqlSession.selectList(namespace + ".selectAll");
    }

    @Override
    public void update(problemVO problem) throws Exception {
        sqlSession.update(namespace + ".update", problem);
    }

    @Override
    public void delete(int problemNum) throws Exception {
        sqlSession.delete(namespace + ".delete", problemNum);
    }
}
