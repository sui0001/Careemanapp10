package service;

import java.util.List;

import dao.CompanyDAO;
import dto.CompanyDTO;

public class FindCompanyService {
    public List<CompanyDTO> execute(CompanyDTO findCompany) {
        CompanyDAO dao = new CompanyDAO();
        List<CompanyDTO> companies = dao.findByCompany(findCompany);
        return companies;  // 企業情報を直接返す
    }
}