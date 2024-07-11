package service;

import dao.CompanyDetailDAO;
import dto.CompanyDetailDTO;

public class FindCompanyDetailService {
    public CompanyDetailDTO execute(CompanyDetailDTO findCompanyDetail) {
        CompanyDetailDAO dao = new CompanyDetailDAO();
        CompanyDetailDTO companyDetail = dao.findByCompanyDetail(findCompanyDetail);
        return companyDetail;
    }
}
