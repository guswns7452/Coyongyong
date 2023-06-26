package com.example.coyongyong.service;

import com.example.coyongyong.domain.customerVO;

public interface customerService {
    void insertCustomer(customerVO customer) throws Exception;
    customerVO getCustomerById(String customerID) throws Exception;
    void updateCustomer(customerVO customer) throws Exception;
    void deleteCustomer(String customerID) throws Exception;
}
