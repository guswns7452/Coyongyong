package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.studyVO;

import java.util.List;

public interface studyDAO {
    void insert(studyVO study) throws Exception;
    studyVO selectByNum(int studyNum) throws Exception;
    studyVO selectById(String customerID) throws Exception;
    List<studyVO> selectByGoodCount(int goodCount) throws Exception;
    List<studyVO> selectAll() throws Exception;
    void update(studyVO study) throws Exception;
    void delete(int studyNum) throws Exception;
}
