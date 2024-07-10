
package service;

import dao.AccountsDAO;
import domain.Accounts;

public class PostAccountService {
	public String execute(Accounts newAccount) {
		AccountsDAO dao = new AccountsDAO();
		String msg = dao.create(newAccount);
		return msg;
	}
}