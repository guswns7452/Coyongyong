package com.example.coyongyong.service;

import com.example.coyongyong.domain.studyVO;

import java.util.List;

public interface studyService {
    public studyVO readStudyByNum(int studyNum) throws Exception;
    public studyVO readStudyById(String customerID) throws Exception;
    public List<studyVO> readStudyByGoodCount(int goodCount) throws Exception;
    public List<studyVO> readAllStudy() throws Exception;
    public void addStudy(studyVO study) throws Exception;
    public int countLastStudyNum() throws Exception;
    public void deleteStudy(int studyNum) throws Exception;
    public void updateStudy(studyVO study) throws Exception;
}
