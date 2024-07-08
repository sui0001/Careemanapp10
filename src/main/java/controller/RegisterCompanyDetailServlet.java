// GETメソッド：就労条件登録画面のregisterCompanyDetail.jspに遷移
// POSTメソッド：就労条件をDBに登録して企業単体ページのcompany.jspに遷移

// TODO：POSTメソッドに就労条件をDB登録する処理を追加する


package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterCompanyDetail")
public class RegisterCompanyDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	// GETメソッド：就労条件登録画面のregisterCompanyDetail.jspに遷移
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 就労条件登録画面のregisterCompanyDetail.jspに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/registerCompanyDetail.jsp");
		rd.forward(req, res);
	}


	// POSTメソッド：就労条件をDBに登録して企業単体ページのcompany.jspに遷移
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 就労条件をDB登録する

		// 企業単体ページのcompany.jspに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
		rd.forward(req, res);
	}

}
