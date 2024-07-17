package service;

import java.util.List;

import dao.CompanyDetailDAO;
import domain.CompanyCompare;

public class CompanyCompareService {
    public List<CompanyCompare> execute(CompanyCompare companyCompare) {
        CompanyDetailDAO dao = new CompanyDetailDAO();
        List<CompanyCompare> compareData = dao.CompanyCompare(companyCompare);
        // System.out.println(compareData);
        return compareData;
    }
}