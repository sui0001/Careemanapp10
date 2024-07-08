// GETメソッド：企業比較ページのcompanyCompare.jspに遷移する
// POSTメソッド：

// TODO：


package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CompanyCompare")
public class CompanyCompareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	// GETメソッド：企業比較ページのcompanyCompare.jspに遷移する
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/companyCompare.jsp");
		rd.forward(req, res);
	}

	
	// // POSTメソッド：
	// protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	// 	RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
	// 	rd.forward(req, res);
	// }

}
