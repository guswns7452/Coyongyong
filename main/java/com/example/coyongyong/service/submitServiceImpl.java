package com.example.coyongyong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coyongyong.domain.submitVO;
import com.example.coyongyong.persistance.submitDAO;

@Service
public class submitServiceImpl implements submitService {

	@Autowired
	private submitDAO submitDAO;

	@Override
	public void submitAnswer(submitVO submit) throws Exception {
		submitDAO.insert(submit);
	}

	@Override
	public submitVO getSubmitByNum(int submitNum) throws Exception {
		return submitDAO.selectByNum(submitNum);
	}

	@Override
	public submitVO getSubmitById(String customerID) throws Exception {
		return submitDAO.selectById(customerID);
	}

	@Override
	public List<submitVO> getSubmitsByIdAndCorrect(String customerID, boolean correct) throws Exception {
		return submitDAO.selectByIdCorrect(customerID, correct);
	}

	@Override
	public List<submitVO> getAllSubmits() throws Exception {
		return submitDAO.selectAll();
	}

	@Override
	public void updateSubmit(submitVO submit) throws Exception {
		submitDAO.update(submit);
	}

	@Override
	public void deleteSubmit(int submitNum) throws Exception {
		submitDAO.delete(submitNum);
	}
}
