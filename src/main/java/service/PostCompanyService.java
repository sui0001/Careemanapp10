package service;

import dao.CompanyDAO;
import dto.CompanyDTO;

public class PostCompanyService {
	public String execute(CompanyDTO newCompany) {
		CompanyDAO dao = new CompanyDAO();
		String msg = dao.createCompany(newCompany);
		return msg;
    }
}