// GETメソッド：企業リスト画面のcompanyList.jspを表示
// POSTメソッド：企業情報をDBに登録して、企業リスト画面のcompanyList.jspに遷移

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
import service.FindCompanyService;
import service.PostCompanyService;


@WebServlet("/CompanyList")
public class CompanyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// GETメソッド：企業リスト画面を表示
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		// DBからuser_idを基に企業情報を取得
			
			// セッションスコープからの取得
			HttpSession session = req.getSession();
			// ユーザIDを取得
			String user_id = (String) session.getAttribute("user_id");
			
			// ユーザIDを基に企業情報を取得
			CompanyDTO findCompany =
				new CompanyDTO(user_id, 0, null, null,null,
					null, null, null, null, null,
						null, null, null, null);
			FindCompanyService findcompanyService = new FindCompanyService();
			List<CompanyDTO> companies = findcompanyService.execute(findCompany);
			System.out.println(companies);
			
			// 企業情報をリクエストスコープに保存
			req.setAttribute("companies", companies);
		
		// 企業リスト画面に遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/companyList.jsp");
		rd.forward(req, res);
	}


	// POSTメソッド：企業情報をDBに登録して、企業リスト画面のcompanyList.jspに遷移
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		// リクエストパラメータの取得
		req.setCharacterEncoding("UTF-8");
		// セッションスコープからの取得
		HttpSession session = req.getSession();

	    // 新規登録企業の情報を取得
		String user_id = (String) session.getAttribute("user_id");
		int company_id = 0; // 企業IDは自動採番
		String company_name = req.getParameter("company_name");
		String selection_application = req.getParameter("selection_application");
		String selection_status = req.getParameter("selection_status");
		String selection_date = req.getParameter("selection_date");
		String selection_flow = req.getParameter("selection_flow");
		String link_hp = req.getParameter("link_hp");
		String link_review = req.getParameter("link_review");
		String[] selection_tasks = req.getParameterValues("selection_tasks");
			// チェックボックスの値を「, 」区切りで1つの文字列に変更する
			String selection_task = String.join(",", selection_tasks);
		String selection_motivation = req.getParameter("selection_motivation");
		String positive_points = req.getParameter("positive_points");
		String negative_points = req.getParameter("negative_points");
		String points_to_confirm = req.getParameter("points_to_confirm");

	    //企業情報をCompanyDTOインスタンスに保存
		CompanyDTO newCompany =
			new CompanyDTO(user_id, company_id, company_name, selection_application, selection_status, selection_date, selection_flow,
				link_hp, link_review, selection_task, selection_motivation, positive_points, negative_points, points_to_confirm);
		req.setAttribute("newCompany", newCompany);

	    //DBに保存
		PostCompanyService postcompanyService = new PostCompanyService();
		String msg = postcompanyService.execute(newCompany);

	    //登録結果をリクエストスコープに保存
		req.setAttribute("msg", msg);

		// doGetメソッドを呼び出す
		doGet(req, res);
	}

}
