// GETメソッド：就労条件登録画面のregisterCompanyDetail.jspに遷移
// POSTメソッド：就労条件をDBに登録して企業単体ページのcompany.jspに遷移

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

import dto.CompanyDetailDTO;
import service.PostCompanyDetailService;


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

		// リクエストパラメータの取得
		req.setCharacterEncoding("UTF-8");
		// セッションスコープからの取得
		HttpSession session = req.getSession();

		// 新規登録の面接内容を取得
		int company_id = (int)session.getAttribute("company_id"); // 企業IDをセッションスコープから取得
		int company_detail_id = 0; // 基本詳細IDは自動採番
		String management_status = req.getParameter("management_status"); // 経営状況
		String business_content = req.getParameter("business_content"); // 事業内容
		String job_description = req.getParameter("job_description"); // 職務内容
		String work_location = req.getParameter("work_location"); // 勤務地
		String remote_work = req.getParameter("remote_work"); // リモートワーク
		String working_hours = req.getParameter("working_hours"); // 就業時間
		int standard_working_hours = Integer.parseInt(req.getParameter("standard_working_hours")); // 所定労働時間
		int break_time = Integer.parseInt(req.getParameter("break_time")); // 休憩時間
		int break_time_rule = Integer.parseInt(req.getParameter("break_time_rule")); // 休憩時間の指定
		int average_overtime_hours = Integer.parseInt(req.getParameter("average_overtime_hours")); // 平均残業時間
		int annual_holidays = Integer.parseInt(req.getParameter("annual_holidays")); // 年間休日数
		String holiday_type = req.getParameter("holiday_type"); // 休日形態
		String paid_holidays = req.getParameter("paid_holidays"); // 有給休暇
		String[] other_holidays = req.getParameterValues("other_holidays"); // 休暇
			// チェックボックスの値を「, 」区切りで1つの文字列に変更する
			String other_holidays_str = String.join(", ", other_holidays);
		String holiday_notes = req.getParameter("holiday_notes"); // 休暇メモ
		int annual_salary_upper = Integer.parseInt(req.getParameter("annual_salary_upper")); // 年収上限
		int annual_salary_lower = Integer.parseInt(req.getParameter("annual_salary_lower")); // 年収下限
		int monthly_salary_upper = Integer.parseInt(req.getParameter("monthly_salary_upper")); // 月収上限
		int monthly_salary_lower = Integer.parseInt(req.getParameter("monthly_salary_lower")); // 月収下限
		int basic_salary_upper = Integer.parseInt(req.getParameter("basic_salary_upper")); // 基本給上限
		int basic_salary_lower = Integer.parseInt(req.getParameter("basic_salary_lower")); // 基本給下限
		int fixed_overtime_pay_upper = Integer.parseInt(req.getParameter("fixed_overtime_pay_upper")); // 固定残業代上限
		int fixed_overtime_pay_lower = Integer.parseInt(req.getParameter("fixed_overtime_pay_lower")); // 固定残業代下限
		int fixed_overtime_hours = Integer.parseInt(req.getParameter("fixed_overtime_hours")); // 固定残業時間
		int commuting_allowance = Integer.parseInt(req.getParameter("commuting_allowance")); // 通勤手当
		int housing_allowance = Integer.parseInt(req.getParameter("housing_allowance")); // 住宅手当
		int qualification_support = Integer.parseInt(req.getParameter("qualification_support")); // 資格補助
		int qualification_allowance = Integer.parseInt(req.getParameter("qualification_allowance")); // 資格手当
		int other_allowances = Integer.parseInt(req.getParameter("other_allowances")); // その他手当
		int bonus = Integer.parseInt(req.getParameter("bonus")); // 賞与
		String bonus_record = req.getParameter("bonus_record"); // 賞与実績
		String social_insurance = req.getParameter("social_insurance"); // 社会保険
		String probation_period = req.getParameter("probation_period"); // 試用期間
		int probation_period_changes = Integer.parseInt(req.getParameter("probation_period_changes")); // 試用期間中の変更
		int retirement_benefits = Integer.parseInt(req.getParameter("retirement_benefits")); // 退職金

		// 面接情報をCompanyDetailDTOインスタンスに格納
		CompanyDetailDTO newCompanyDetail =
			new CompanyDetailDTO(company_id, company_detail_id, management_status, business_content, job_description,
				work_location, remote_work, working_hours, standard_working_hours, break_time, break_time_rule,
					average_overtime_hours, annual_holidays, holiday_type, paid_holidays, other_holidays_str,
						holiday_notes, annual_salary_upper, annual_salary_lower, monthly_salary_upper, monthly_salary_lower,
							basic_salary_upper, basic_salary_lower, fixed_overtime_pay_upper, fixed_overtime_pay_lower,
								fixed_overtime_hours, commuting_allowance, housing_allowance, qualification_support,
									qualification_allowance, other_allowances, bonus, bonus_record, social_insurance,
										probation_period, probation_period_changes, retirement_benefits);
		req.setAttribute("newCompanyDetail", newCompanyDetail);

		// DBに保存
		PostCompanyDetailService postCompanyDetailService = new PostCompanyDetailService();
		String msg = postCompanyDetailService.execute(newCompanyDetail);
		
		// CompanyServlet.javaを介して企業単体ページのcompany.jspに遷移する
		res.sendRedirect("/Careemanapp10/Company");

		// // 企業単体ページのcompany.jspに遷移
		// RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/company.jsp");
		// rd.forward(req, res);
	}

}
