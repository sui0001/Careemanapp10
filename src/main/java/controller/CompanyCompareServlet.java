// GETメソッド：企業比較ページのcompanyCompare.jspに遷移する
// POSTメソッド：

// TODO：


package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.CompanyDTO;
import dto.CompanyDetailDTO;
import service.CompanyCompareService;
import service.FindCompanyService;


@WebServlet("/CompanyCompare")
public class CompanyCompareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	// GETメソッド：企業比較ページのcompanyCompare.jspに遷移する
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		// CompanyListServletと同じ処理
		// DBからuser_idを基に企業情報を取得
			
			// セッションスコープからの取得
			HttpSession session = req.getSession();
			// ユーザIDを取得
			String user_id = (String) session.getAttribute("user_id");
			
			// 1. ユーザIDを基に企業情報を取得
			CompanyDTO findCompany =
				new CompanyDTO(user_id, 0, null, null,null,
					null, null, null, null, null,
						null, null, null, null);
			FindCompanyService findcompanyService = new FindCompanyService();
			List<CompanyDTO> companies = findcompanyService.execute(findCompany);
		// 	// System.out.println(companies);

			// 2.ユーザーIDを基に企業詳細情報を取得
			CompanyDetailDTO findCompanyDetails =
				new CompanyDetailDTO(user_id, 0, 0, null, null, null,
					null, null, null, 0, 0, null, 0, 0, null, null, null, null,
						0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null);
			CompanyCompareService findCompanyDetailService = new CompanyCompareService();
			CompanyDetailDTO details = findCompanyDetailService.execute(findCompanyDetails);
			System.out.println(details);

			
			// 企業情報をリクエストスコープに保存
			req.setAttribute("companies", companies);
			req.setAttribute("details", details);


		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/companyCompare.jsp");
		rd.forward(req, res);
	}

	
	// // POSTメソッド：
	// protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	// 	RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
	// 	rd.forward(req, res);
	// }

}
