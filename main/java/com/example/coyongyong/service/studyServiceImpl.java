package com.example.coyongyong.service;

import com.example.coyongyong.domain.studyVO;
import com.example.coyongyong.persistance.studyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class studyServiceImpl implements studyService {

    @Autowired
    private studyDAO studyDAO;

    @Override
    public studyVO readStudyByNum(int studyNum) throws Exception {
        return studyDAO.selectByNum(studyNum);
    }

    @Override
    public studyVO readStudyById(String customerID) throws Exception {
        return studyDAO.selectById(customerID);
    }

    @Override
    public List<studyVO> readStudyByGoodCount(int goodCount) throws Exception {
        return studyDAO.selectByGoodCount(goodCount);
    }

    @Override
    public List<studyVO> readAllStudy() throws Exception {
        return studyDAO.selectAll();
    }
    
    public int countLastStudyNum() throws Exception{
		return studyDAO.readLastStudyNum();
	}
    
    @Override
    public void addStudy(studyVO study) throws Exception {
        studyDAO.insert(study);
    }

    @Override
    public void deleteStudy(int studyNum) throws Exception {
        studyDAO.delete(studyNum);
    }

    @Override
    public void updateStudy(studyVO study) throws Exception {
        studyDAO.update(study);
    }
}
