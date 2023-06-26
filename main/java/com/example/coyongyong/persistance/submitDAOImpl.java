package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.submitVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class submitDAOImpl implements submitDAO {

    private static final String namespace = "com.example.coyongyong.mapper.submitMapper";

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void insert(submitVO submit) throws Exception {
        sqlSession.insert(namespace + ".insert", submit);
    }

    @Override
    public submitVO selectByNum(int submitNum) throws Exception {
        return sqlSession.selectOne(namespace + ".selectByNum", submitNum);
    }

    @Override
    public submitVO selectById(String customerID) throws Exception {
        return sqlSession.selectOne(namespace + ".selectById", customerID);
    }

    // TODO 이부분 오류 날수도 있음
    @Override
    public List<submitVO> selectByIdCorrect(String customerID, boolean correct) throws Exception {
    	submitVO submit = new submitVO();
		submit.setCustomerID(customerID);
		submit.setCorrect(correct);
		return sqlSession.selectList(namespace + ".selectByIdCorrect", submit);
    }

    @Override
    public List<submitVO> selectAll() throws Exception {
        return sqlSession.selectList(namespace + ".selectAll");
    }

    @Override
    public void update(submitVO submit) throws Exception {
        sqlSession.update(namespace + ".update", submit);
    }

    @Override
    public void delete(int submitNum) throws Exception {
        sqlSession.delete(namespace + ".delete", submitNum);
    }
}
