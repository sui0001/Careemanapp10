// GETメソッド：企業登録画面のregisterCompany.jspに遷移
// POSTメソッド：

// TODO：リクエストスコープにcompany_idをセットして面接情報を取得できるようにする

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterCompany")
public class RegisterCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	// GETメソッド：企業登録画面のregisterCompany.jspに遷移
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 企業登録画面に遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/registerCompany.jsp");
		rd.forward(req, res);
	}


	// // POSTメソッド：
	// protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	// 	RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/registerCompany.jsp");
	// 	rd.forward(req, res);
	// }

}
