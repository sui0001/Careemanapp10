package service;

import dao.AccountsDAO;
import domain.Accounts;

public class FindAccountService {
    public Accounts execute(Accounts findAccount) {
        AccountsDAO dao = new AccountsDAO();
        Accounts account = dao.findByAccount(findAccount);
        return account;
    }
}
