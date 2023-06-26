package com.example.coyongyong.service;

import com.example.coyongyong.domain.reportVO;
import com.example.coyongyong.persistance.reportDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class reportServiceImpl implements reportService {

    @Autowired
    private reportDAO reportDAO;

    @Override
    public reportVO readReportByNum(int reportNum) throws Exception {
        return reportDAO.selectByid(reportNum);
    }

    @Override
    public List<reportVO> readAllReports() throws Exception {
        return reportDAO.selectAll();
    }

    @Override
    public List<reportVO> readReportsByCustomerID(String customerID) throws Exception {
        return reportDAO.selectByCustomerID(customerID);
    }

    @Override
    public List<reportVO> readReportsByBoardCategory(String boardCategory) throws Exception {
        return reportDAO.selectByBoardCategory(boardCategory);
    }

    @Override
    public void addReport(reportVO report) throws Exception {
        reportDAO.insert(report);
    }

    @Override
    public void deleteReport(int reportNum) throws Exception {
        reportDAO.delete(reportNum);
    }

    @Override
    public void updateReport(reportVO report) throws Exception {
        reportDAO.update(report);
    }
}
