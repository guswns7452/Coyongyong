package com.example.coyongyong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.example.coyongyong.domain.problemVO;
import com.example.coyongyong.persistance.problemDAO;
import org.springframework.stereotype.Service;

@Service
public class problemServiceImpl implements problemService{
	
	@Autowired
	private problemDAO problemDAO;
	
	
	  @Override public void insertProblem(problemVO problem) throws Exception{
		  problemDAO.insert(problem); 
	  }
		
	
	@Override
    public problemVO readProblemByid(int problemNum) throws Exception{
    	return problemDAO.selectByid(problemNum);
    }
	
	@Override
    public List<problemVO> readProblemByGradeAndLanguage(int grade, int languageNum) throws Exception{
    	return problemDAO.selectByGradeAndLanguage(grade, languageNum);
    }
    
    @Override
    public List<problemVO> readAll() throws Exception{
    	return problemDAO.selectAll();
    }
    
    @Override
    public void updateProblem(problemVO problem) throws Exception{
    	problemDAO.update(problem);
    }
    
    @Override
    public void deleteProblem(int problemNum) throws Exception{
    	problemDAO.delete(problemNum);
    }
}
