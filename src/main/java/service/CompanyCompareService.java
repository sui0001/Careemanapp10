package service;

import dao.CompanyDetailDAO;
import dto.CompanyDetailDTO;

public class CompanyCompareService {
    public CompanyDetailDTO execute(CompanyDetailDTO companyCompare) {
        CompanyDetailDAO dao = new CompanyDetailDAO();
        CompanyDetailDTO companyDetails = dao.CompanyCompare(companyCompare);
        return companyDetails;
    }
}