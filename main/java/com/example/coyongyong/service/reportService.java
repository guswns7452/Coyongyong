package com.example.coyongyong.service;

import com.example.coyongyong.domain.reportVO;

import java.util.List;

public interface reportService {
    public reportVO readReportByNum(int reportNum) throws Exception;
    public List<reportVO> readAllReports() throws Exception;
    public List<reportVO> readReportsByCustomerID(String customerID) throws Exception;
    public List<reportVO> readReportsByBoardCategory(String boardCategory) throws Exception;
    public void addReport(reportVO report) throws Exception;
    public void deleteReport(int reportNum) throws Exception;
    public void updateReport(reportVO report) throws Exception;
}
