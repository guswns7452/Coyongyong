package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.problemVO;

import java.util.List;

public interface problemDAO {
    void insert(problemVO problem) throws Exception;
    problemVO selectByid(int problemNum) throws Exception;
    List<problemVO> selectByGradeAndLanguage(int grade, int languageNum) throws Exception;
    List<problemVO> selectAll() throws Exception;
    void update(problemVO problem) throws Exception;
    void delete(int problemNum) throws Exception;
}
