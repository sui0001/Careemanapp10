package service;

import dao.CompanyDetailDAO;
import dto.CompanyDetailDTO;

public class PostCompanyDetailService {
    public String execute(CompanyDetailDTO newCompanyDetail) {
        CompanyDetailDAO dao = new CompanyDetailDAO();
        String msg = dao.createCompanyDetail(newCompanyDetail);
        return msg;
    }
}
