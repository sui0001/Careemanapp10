package service;

import dao.CompanyDAO;
import dto.CompanyDTO;

public class FindCompanyService {
    public CompanyDTO execute(CompanyDTO findCompany) {
        CompanyDAO dao = new CompanyDAO();
        CompanyDTO company = dao.findByCompany(findCompany);
        return company;  // アカウント情報を直接返す
    }
}