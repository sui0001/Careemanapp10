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

@WebServlet("/AccountUpdate")
public class AccountUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	// GETメソッド：ユーザー情報更新画面のaccountUpdate.jspに遷移する
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
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
