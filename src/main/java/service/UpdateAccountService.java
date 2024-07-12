package service;

import dao.AccountsDAO;
import domain.Accounts;

public class UpdateAccountService {
    public String execute(Accounts updateAccount) {
		AccountsDAO dao = new AccountsDAO();
		String msg = dao.update(updateAccount);
		return msg;
	}
}
