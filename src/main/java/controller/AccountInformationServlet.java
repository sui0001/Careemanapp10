// GETメソッド：ユーザー情報画面のAccountinformation.jspに遷移する
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

@WebServlet("/AccountInformation")
public class AccountInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	// GETメソッド：
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// ユーザー情報画面のAccountinformation.jspに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/accountInformation.jsp");
		rd.forward(req, res);
	}

	
	// POSTメソッド：ユーザー情報のDB更新を行い、ユーザー情報画面のaccountinformation.jspに遷移する
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// ユーザー情報のDB更新を行う

		// ユーザー情報画面のaccountInformation.jspに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/accountInformation.jsp");
		rd.forward(req, res);
	}

}
