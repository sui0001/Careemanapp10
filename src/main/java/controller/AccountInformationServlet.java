////// GETメソッド：ユーザー情報画面のAccountinformation.jspに遷移する
// POSTメソッド：ユーザー情報のDB更新を行い、ユーザー情報画面のaccountinformation.jspに遷移する

//TODO：ユーザー情報更新を行う処理を追加する

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
import service.UpdateAccountService;

@WebServlet("/AccountInformation")
public class AccountInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	// GETメソッド：
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

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

		// ユーザー情報画面のAccountinformation.jspに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/accountInformation.jsp");
		rd.forward(req, res);
	}

	
	// POSTメソッド：ユーザー情報のDB更新を行い、ユーザー情報画面のaccountinformation.jspに遷移する
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		// リクエストパラメータの取得
		req.setCharacterEncoding("UTF-8");
		// セッションスコープからの取得
		HttpSession session = req.getSession();

		// 更新するユーザー情報を取得
		String user_id = (String) session.getAttribute("user_id");
		String name = req.getParameter("name");
		String mail = req.getParameter("mail");
		int age = Integer.parseInt(req.getParameter("age"));
		String pass = req.getParameter("pass");
		String goal = req.getParameter("goal");
		String link_resume = req.getParameter("link_resume");
		String link_work_history = req.getParameter("link_work_history");
		
		// ユーザー情報をAccountsインスタンスに格納
		Accounts updateAccount = new Accounts(user_id, pass, mail, name, age, goal, link_resume, link_work_history);
		req.setAttribute("updateAccount", updateAccount);

		// DBのユーザー情報を更新
		UpdateAccountService updateAccountService = new UpdateAccountService();
		String msg = updateAccountService.execute(updateAccount);

		//更新結果をリクエストスコープに保存
		req.setAttribute("msg", msg);

		// doGetメソッドを呼び出す
		doGet(req, res);

		// // ユーザー情報画面のaccountInformation.jspに遷移
		// RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/accountInformation.jsp");
		// rd.forward(req, res);
	}

}
