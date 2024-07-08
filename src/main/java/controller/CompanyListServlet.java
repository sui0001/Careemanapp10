// GETメソッド：企業リスト画面のcompanyList.jspを表示
// POSTメソッド：企業情報をDBに登録して、企業リスト画面のcompanyList.jspに遷移

// TODO：


package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CompanyList")
public class CompanyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// GETメソッド：企業リスト画面を表示
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/companyList.jsp");
		rd.forward(req, res);
	}

	// POSTメソッド：企業情報をDBに登録して、企業リスト画面のcompanyList.jspに遷移
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// 企業情報をDBに登録

		// 企業リスト画面に遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/companyList.jsp");
		rd.forward(req, res);
	}

}
