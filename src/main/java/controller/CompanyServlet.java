// GETメソッド：企業単体ページのcompany.jspに遷移するためのサーブレット
// POSTメソッド：

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Company")
public class CompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// GETメソッド：企業単体ページのcompany.jspに遷移
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
		rd.forward(req, res);
	}


	// // POSTメソッド：
	// protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// }

}
