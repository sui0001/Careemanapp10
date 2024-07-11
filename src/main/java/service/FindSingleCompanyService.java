package service;

import dao.CompanyDAO;
import dto.CompanyDTO;

public class FindSingleCompanyService {
    public CompanyDTO execute(CompanyDTO findSingleCompany) {
        CompanyDAO dao = new CompanyDAO();
        CompanyDTO singleCompany = dao.findSingleCompany(findSingleCompany);
        return singleCompany;  // 企業情報を直接返す
    }
}
