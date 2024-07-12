// GETメソッド：企業単体ページのcompany.jspに遷移するためのサーブレット
// POSTメソッド：

// TODO：InterviewとDetailのぬるぽしょり!!!!!!


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
import dto.InterviewDTO;
import service.FindCompanyDetailService;
import service.FindInterviewService;
import service.FindSingleCompanyService;


@WebServlet("/Company")
public class CompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// GETメソッド：企業単体ページのcompany.jspに遷移
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		// DBから企業IDを基に企業単体の情報を取得

			// リクエストパラメータの取得 (企業リストで選択した企業のcompany_idを取得)
			req.setCharacterEncoding("UTF-8");
			// セッションスコープからの取得
			HttpSession session = req.getSession();

			// company_idを取得 (企業リストページのcompanyList.jspから遷移時はリクエストパラメータから取得/面接や詳細ページから遷移時はセッションスコープから取得)
			int company_id;
			if (req.getParameter("company_id") == null) {
				company_id = (int)session.getAttribute("company_id");
			} else {
				company_id = Integer.parseInt(req.getParameter("company_id"));
			}
			System.out.println(company_id);

			// 1. 企業IDを基に企業単体の情報を取得 (1企業につき1情報だがメソッドを流用するためリストで取得)
			CompanyDTO findsingleCompany =
				new CompanyDTO(company_id, null, null,null,
					null, null, null, null, null,
						null, null, null, null);
			FindSingleCompanyService findsinglecompanyService = new FindSingleCompanyService();
			CompanyDTO singleCompany = findsinglecompanyService.execute(findsingleCompany);
			// System.out.println(singleCompany);

			// 2. 企業IDを基に面接情報を取得
			InterviewDTO findInterview =
				new InterviewDTO(company_id, 0, null, null, null, null, null);
			FindInterviewService findInterviewService = new FindInterviewService();
			List<InterviewDTO> interviews = findInterviewService.execute(findInterview);
			System.out.println(interviews);

			// 3.企業IDを基に企業詳細情報を取得
			CompanyDetailDTO findCompanyDetail =
				new CompanyDetailDTO(company_id, 0, null, null, null,
					null, null, null, 0, 0, 0, 0, 0, null, null, null, null,
						0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, 0, 0);
			FindCompanyDetailService findCompanyDetailService = new FindCompanyDetailService();
			CompanyDetailDTO details = findCompanyDetailService.execute(findCompanyDetail);
			System.out.println(details);

		// 企業単体の情報をリクエストスコープに保存
		req.setAttribute("singleCompany", singleCompany);
		req.setAttribute("interviews", interviews);
		req.setAttribute("details", details);

		// company_idをセッションスコープに保存 (セッションスコープにすでに保存されている場合何もしない)
		if (session.getAttribute("company_id") == null) {
			session.setAttribute("company_id", company_id);
		}
		
		// 企業単体ページに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
		rd.forward(req, res);
	}


	// // POSTメソッド：
	// protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// }

}
