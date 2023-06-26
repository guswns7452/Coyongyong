package com.example.coyongyong.persistance;

import com.example.coyongyong.domain.languageVO;

import java.util.List;

public interface languageDAO {
    void insert(languageVO language) throws Exception;
    languageVO selectByid(int languageNum) throws Exception;
    languageVO selectByname(String languageName) throws Exception;
    List<languageVO> selectAll() throws Exception;
    void update(languageVO language) throws Exception;
    void delete(int languageNum) throws Exception;
}
