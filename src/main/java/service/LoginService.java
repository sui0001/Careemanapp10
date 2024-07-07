package service;

import dao.AccountsDAO;
import domain.Accounts;
import dto.LoginDTO;

//public class LoginService {
//	//結果はtrueかfalseで返ってくる。（戻り値がboolean型だから）
//	public boolean execute(LoginDTO login) {
//		//DAOをnewする。SQL文が絡んでくるからDAOをnewしている。（DAOはSQL周りのあれこれが入っているところ）
//		AccountsDAO dao = new AccountsDAO();
//		//DAOの中のメソッドを実行。結果を変数accountsに代入。クラス名.メソッド名（Javaのクラスの授業で言うところのbird.fly()みたいな。）
//		Accounts accounts = dao.findByLogin(login);
//		//戻り値がboolean型だからreturn文が必要。結果がnullじゃなければ（=DBに値が入っていたら）変数accounts（中身はアカウント情報）を返す
//		return accounts != null;
//
//	}
//}

public class LoginService {
    public Accounts execute(LoginDTO login) {
        AccountsDAO dao = new AccountsDAO();
        Accounts accounts = dao.findByLogin(login);
        return accounts;  // アカウント情報を直接返す
    }
}
