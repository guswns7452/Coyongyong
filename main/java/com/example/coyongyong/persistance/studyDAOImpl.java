package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.studyVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Repository
@Transactional
public class studyDAOImpl implements studyDAO {

    private static final String namespace = "com.example.coyongyong.mapper.studyMapper";

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void insert(studyVO study) throws Exception {
        sqlSession.insert(namespace + ".insert", study);
    }

    @Override
    public studyVO selectByNum(int studyNum) throws Exception {
        return sqlSession.selectOne(namespace + ".selectByNum", studyNum);
    }
    
    @Override
    public studyVO selectById(String customerID) throws Exception {
        return sqlSession.selectOne(namespace + ".selectById", customerID);
    }
    
    public int readLastStudyNum() throws Exception{
		// INT라서 그런가?
		Integer lastStudyNum = sqlSession.selectOne(namespace+".selectLastStudyNum");
		return (lastStudyNum != null) ? lastStudyNum : 0; // 또는 다른 기본값 
	} 

    @Override
    public List<studyVO> selectByGoodCount(int goodCount) throws Exception {
        return sqlSession.selectList(namespace + ".selectByGoodCount", goodCount);
    }

    @Override
    public List<studyVO> selectAll() throws Exception {
        return sqlSession.selectList(namespace + ".selectAll");
    }
    
    @Override
    public void increaseStudyCount(studyVO study) throws Exception{
    	sqlSession.update(namespace + ".updateStudyCount", study);
    }
    
    @Override
    public void update(studyVO study) throws Exception {
        sqlSession.update(namespace + ".update", study);
    }

    @Override
    public void delete(int studyNum) throws Exception {
        sqlSession.delete(namespace + ".delete", studyNum);
    }
}
