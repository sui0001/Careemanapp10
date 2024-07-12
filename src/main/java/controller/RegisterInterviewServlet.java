// GETメソッド：面接登録画面のregisterInterview.jspに遷移
// POSTメソッド：面接内容を登録して企業単体ページのcompany.jspに遷移


// TODO：POSTメソッドのcompany.jspに遷移する処理をCompanyServlet.javaを介するようにする

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.InterviewDTO;
import service.PostInterviewService;


@WebServlet("/RegisterInterview")
public class RegisterInterviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// GETメソッド：面接登録画面のregisterInterview.jspに遷移
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		// 面接登録画面のregisterInterview.jspに遷移
		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/registerInterview.jsp");
		rd.forward(req, res);
	}


	// POSTメソッド：面接内容を登録して企業単体ページのcompany.jspに遷移
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		// リクエストパラメータの取得
		req.setCharacterEncoding("UTF-8");
		// セッションスコープからの取得
		HttpSession session = req.getSession();

		// 新規登録の面接内容を取得
		int company_id = (int)session.getAttribute("company_id"); // 企業IDをセッションスコープから取得
		//System.out.println("company_id: " + company_id);
		int interview_id = 0; // 面接IDは自動採番
		String interview_date = req.getParameter("interview_date");
		String interviewer_name = req.getParameter("interviewer_name");
		String[] interview_content_basic = req.getParameterValues("interview_content_basic");
			// チェックボックスの値を「, 」区切りで1つの文字列に変更する
			String interview_content_basic_str = String.join(", ", interview_content_basic);
		String interview_content_additional = req.getParameter("interview_content_additional");
		String interview_memo = req.getParameter("interview_memo");

		// 面接情報をInterviewDTOインスタンスに格納
		InterviewDTO newInterview =
			new InterviewDTO(company_id, interview_id, interview_date, interviewer_name,
				interview_content_basic_str, interview_content_additional, interview_memo);
				System.out.println("Interview : " + newInterview.getCompany_id());
		req.setAttribute("newInterview", newInterview);

		// DBに保存
		PostInterviewService postInterviewService = new PostInterviewService();
		String msg = postInterviewService.execute(newInterview);
		
		// CompanyServlet.javaを介して企業単体ページのcompany.jspに遷移する
		res.sendRedirect("/Careemanapp10/Company");
		
	// 	// 企業単体ページのcompany.jspに遷移
	// 	RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
	// 	rd.forward(req, res);
	}

}
