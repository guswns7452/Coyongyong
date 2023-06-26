package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.submitVO;

import java.util.List;

public interface submitDAO {
    void insert(submitVO submit) throws Exception;
    submitVO selectByNum(int submitNum) throws Exception;
    submitVO selectById(String customerID) throws Exception;
    List<submitVO> selectByIdCorrect(String customerID, boolean correct) throws Exception;
    List<submitVO> selectAll() throws Exception;
    void update(submitVO submit) throws Exception;
    void delete(int submitNum) throws Exception;
}
