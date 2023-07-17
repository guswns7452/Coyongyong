package com.example.coyongyong.service;

import java.util.List;

import com.example.coyongyong.domain.problemVO;

public interface problemService {
	public void insertProblem(problemVO problem) throws Exception;
    public problemVO readProblemByid(int problemNum) throws Exception;
    public List<problemVO> readProblemByGradeAndLanguage(int grade, int languageNum) throws Exception;
    public List<problemVO> readAll() throws Exception;
    public void updateProblem(problemVO problem) throws Exception;
    public void deleteProblem(int problemNum) throws Exception;
	
}
