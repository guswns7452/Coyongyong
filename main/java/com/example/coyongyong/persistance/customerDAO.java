package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.customerVO;

import java.util.List;

public interface customerDAO {
    void insert(customerVO customer) throws Exception;
    customerVO selectByid(String customerID) throws Exception;
    List<customerVO> selectAll() throws Exception;
    void update(customerVO customer) throws Exception;
    void delete(String customerID) throws Exception;
}
