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

		// // CompanyListServletと同じ処理
		// // DBからuser_idを基に企業情報を取得
			
		// 	// セッションスコープからの取得
		// 	HttpSession session = req.getSession();
		// 	// ユーザIDを取得
		// 	String user_id = (String) session.getAttribute("user_id");
			
		// 	// 1. ユーザIDを基に企業情報を取得
		// 	CompanyDTO findCompany =
		// 		new CompanyDTO(user_id, 0, null, null,null,
		// 			null, null, null, null, null,
		// 				null, null, null, null);
		// 	FindCompanyService findcompanyService = new FindCompanyService();
		// 	List<CompanyDTO> companies = findcompanyService.execute(findCompany);
		// 	// System.out.println(companies);

		// 	// 2.企業IDを基に企業詳細情報を取得
		// 	CompanyDetailDTO findCompanyDetail =
		// 		new CompanyDetailDTO(0, 0, null, null, null,
		// 			null, null, null, 0, 0, 0, 0, 0, null, null, null, null,
		// 				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, 0, 0);
		// 	FindCompanyDetailListService findCompanyDetailListService = new FindCompanyDetailListService();
		// 	List<CompanyDetailDTO> details = findCompanyDetailListService.execute(findCompanyDetail);
			
		// 	// 企業情報をリクエストスコープに保存
		// 	req.setAttribute("companies", companies);
		// 	req.setAttribute("details", details);


		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/companyCompare.jsp");
		rd.forward(req, res);
	}

	
	// // POSTメソッド：
	// protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	// 	RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
	// 	rd.forward(req, res);
	// }

}
