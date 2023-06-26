package com.example.coyongyong.service;

import com.example.coyongyong.domain.languageVO;

import java.util.List;

public interface languageService {
    void insertLanguage(languageVO language) throws Exception;
    languageVO getLanguageById(int languageNum) throws Exception;
    languageVO getLanguageByName(String languageName) throws Exception;
    List<languageVO> getAllLanguages() throws Exception;
    void updateLanguage(languageVO language) throws Exception;
    void deleteLanguage(int languageNum) throws Exception;
}
