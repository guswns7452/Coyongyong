package com.example.coyongyong.service;

import com.example.coyongyong.domain.languageVO;
import com.example.coyongyong.persistance.languageDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class languageServiceImpl implements languageService {

    @Autowired
    private languageDAO languageDAO;

    @Override
    public languageVO readLanguageByNum(int languageNum) throws Exception {
        return languageDAO.selectByid(languageNum);
    }

    @Override
    public languageVO readLanguageByName(String languageName) throws Exception {
        return languageDAO.selectByname(languageName);
    }

    @Override
    public List<languageVO> readAllLanguages() throws Exception {
        return languageDAO.selectAll();
    }

    @Override
    public void addLanguage(languageVO language) throws Exception {
        languageDAO.insert(language);
    }

    @Override
    public void updateLanguage(languageVO language) throws Exception {
        languageDAO.update(language);
    }

    @Override
    public void deleteLanguage(int languageNum) throws Exception {
        languageDAO.delete(languageNum);
    }
}
