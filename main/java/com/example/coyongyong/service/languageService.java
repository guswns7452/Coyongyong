package com.example.coyongyong.service;

import com.example.coyongyong.domain.languageVO;

import java.util.List;

public interface languageService {
    void addLanguage(languageVO language) throws Exception;
    languageVO readLanguageByNum(int languageNum) throws Exception;
    languageVO readLanguageByName(String languageName) throws Exception;
    List<languageVO> readAllLanguages() throws Exception;
    void updateLanguage(languageVO language) throws Exception;
    void deleteLanguage(int languageNum) throws Exception;
}
