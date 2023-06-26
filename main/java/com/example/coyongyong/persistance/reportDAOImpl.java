package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.reportVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class reportDAOImpl implements reportDAO {

    private static final String namespace = "com.example.coyongyong.mapper.reportMapper";

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void insert(reportVO report) throws Exception {
        sqlSession.insert(namespace + ".insert", report);
    }

    @Override
    public reportVO selectByid(int reportNum) throws Exception {
        return sqlSession.selectOne(namespace + ".selectByid", reportNum);
    }

    @Override
    public List<reportVO> selectAll() throws Exception {
        return sqlSession.selectList(namespace + ".selectAll");
    }

    @Override
    public List<reportVO> selectByCustomerID(String customerID) throws Exception {
        return sqlSession.selectList(namespace + ".selectByCustomerID", customerID);
    }

    @Override
    public List<reportVO> selectByBoardCategory(String boardCategory) throws Exception {
        return sqlSession.selectList(namespace + ".selectByBoardCategory", boardCategory);
    }

    @Override
    public void update(reportVO report) throws Exception {
        sqlSession.update(namespace + ".update", report);
    }

    @Override
    public void delete(int reportNum) throws Exception {
        sqlSession.delete(namespace + ".delete", reportNum);
    }
}
