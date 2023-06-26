package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.customerVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class customerDAOImpl implements customerDAO {

    private static final String namespace = "com.example.coyongyong.mapper.customerMapper";
    private final SqlSession sqlSession;

    @Autowired
    public customerDAOImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void insert(customerVO customer) throws Exception {
        sqlSession.insert(namespace + ".insert", customer);
    }

    @Override
    public customerVO selectByid(String customerID) throws Exception {
        return sqlSession.selectOne(namespace + ".selectByid", customerID);
    }

    @Override
    public List<customerVO> selectAll() throws Exception {
        return sqlSession.selectList(namespace + ".selectAll");
    }

    @Override
    public void update(customerVO customer) throws Exception {
        sqlSession.update(namespace + ".update", customer);
    }

    @Override
    public void delete(String customerID) throws Exception {
        sqlSession.delete(namespace + ".delete", customerID);
    }
}
