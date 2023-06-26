package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.languageVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class languageDAOImpl implements languageDAO {

    private static final String namespace = "com.example.coyongyong.mapper.languageMapper";

    private final SqlSession sqlSession;

    @Autowired
    public languageDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void insert(languageVO language) throws Exception {
        sqlSession.insert(namespace + ".insert", language);
    }

    @Override
    public languageVO selectByid(int languageNum) throws Exception {
        return sqlSession.selectOne(namespace + ".selectByid", languageNum);
    }

    @Override
    public languageVO selectByname(String languageName) throws Exception {
        return sqlSession.selectOne(namespace + ".selectByname", languageName);
    }

    @Override
    public List<languageVO> selectAll() throws Exception {
        return sqlSession.selectList(namespace + ".selectAll");
    }

    @Override
    public void update(languageVO language) throws Exception {
        sqlSession.update(namespace + ".update", language);
    }

    @Override
    public void delete(int languageNum) throws Exception {
        sqlSession.delete(namespace + ".delete", languageNum);
    }
}
