package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.reportVO;

import java.util.List;

public interface reportDAO {
    void insert(reportVO report) throws Exception;
    reportVO selectByid(int reportNum) throws Exception;
    List<reportVO> selectAll() throws Exception;
    List<reportVO> selectByCustomerID(String customerID) throws Exception;
    List<reportVO> selectByBoardCategory(String boardCategory) throws Exception;
    void update(reportVO report) throws Exception;
    void delete(int reportNum) throws Exception;
}
