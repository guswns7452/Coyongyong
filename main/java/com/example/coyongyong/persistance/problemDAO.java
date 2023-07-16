package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.problemVO;

import java.util.List;

public interface problemDAO {
    public void insert(problemVO problem) throws Exception;
    public problemVO selectByid(int problemNum) throws Exception;
    public List<problemVO> selectByGradeAndLanguage(int grade, int languageNum) throws Exception;
    public List<problemVO> selectAll() throws Exception;
    public void update(problemVO problem) throws Exception;
    public void delete(int problemNum) throws Exception;
}
