package com.example.coyongyong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coyongyong.domain.customerVO;
import com.example.coyongyong.persistance.customerDAO;


@Service
public class customerServiceImpl implements customerService {

    private final customerDAO customerDAO;

    @Autowired
    public customerServiceImpl(customerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }

    @Override
    public void insertCustomer(customerVO customer) throws Exception {
        customerDAO.insert(customer);
    }

    @Override
    public customerVO getCustomerById(String customerID) throws Exception {
        return customerDAO.selectByid(customerID);
    }

    @Override
    public void updateCustomer(customerVO customer) throws Exception {
        customerDAO.update(customer);
    }

    @Override
    public void deleteCustomer(String customerID) throws Exception {
        customerDAO.delete(customerID);
    }
}
