package com.example.coyongyong.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coyongyong.domain.gradeVO;
import com.example.coyongyong.persistance.gradeDAO;

@Service
public class gradeServiceImpl implements gradeService{
	
	@Autowired
	private gradeDAO gradeDAO;
	
	public gradeVO readGrade(int gradeNum) throws Exception{
		return gradeDAO.read(gradeNum);
	}
	
	public List<gradeVO> readGradeList() throws Exception{
		return gradeDAO.readList();
	}
	
	public List<gradeVO> readGradeByCustomerID(String customerID) throws Exception{
		return gradeDAO.readByID(customerID);
	}
	
	public int countLastGradeNum() throws Exception{
		return gradeDAO.readLastGradeNum();
	}

	public int checkGradeBylanguage(String customerID, int languageNum) throws Exception{
		Map<String, Object> parameters = new HashMap<>();
		parameters.put("customerID", customerID);
		parameters.put("languageNum", languageNum);
		
		return gradeDAO.readByLanguage(parameters);
	}
	
	
	public void addGrade(gradeVO grade) throws Exception{
		gradeDAO.add(grade);
	}
	
	public void deleteGrade(int gradeNum) throws Exception{
		gradeDAO.delete(gradeNum);
	}

	//TODO 트랜잭션 나중에 할려면 하고 말려면 말고,
	public void updateGrade(gradeVO grade) throws Exception{
		gradeDAO.update(grade);
	}

}
