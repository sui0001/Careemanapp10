// GETメソッド：面接登録画面のregisterInterview.jspに遷移
// POSTメソッド：

// TODO：POSTメソッドに面接内容をDB登録する処理を追加する
// TODO：POSTメソッドのcompany.jspに遷移する処理をCompanyServlet.javaを介するようにする

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterInterview")
public class RegisterInterviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// GETメソッド：面接登録画面のregisterInterview.jspに遷移
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/registerInterview.jsp");
		rd.forward(req, res);
	}


	// POSTメソッド：面接内容を登録して企業単体ページのcompany.jspに遷移
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 面接内容をDB登録する

		// 企業単体ページのcompany.jspに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
		rd.forward(req, res);
	}

}
