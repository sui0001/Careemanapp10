// GETメソッド：ユーザー情報更新画面のaccountUpdate.jspに遷移する
// POSTメソッド：

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Accounts;
import service.FindAccountService;

@WebServlet("/AccountUpdate")
public class AccountUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	// GETメソッド：ユーザー情報更新画面のaccountUpdate.jspに遷移する
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		// AccountInformationServlet.javaのdoGetメソッドと同じ	
			// セッションスコープからの取得
				HttpSession session = req.getSession();
				// ユーザIDを取得
				String user_id = (String) session.getAttribute("user_id");

				// ユーザIDを基にユーザー情報を取得
				Accounts findAccount =
					new Accounts(user_id, null, null, null, 0, null, null, null);
				FindAccountService findAccountService = new FindAccountService();
				Accounts account = findAccountService.execute(findAccount);
				System.out.println(account);

				// ユーザー情報をリクエストスコープに保存
				req.setAttribute("account", account);
		
		// ユーザー情報更新画面のaccountUpdate.jspに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/accountUpdate.jsp");
		rd.forward(req, res);
	}


	// // POSTメソッド：
	// protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	// 	RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/accountUpdate.jsp");
	// 	rd.forward(req, res);
	// }

}
