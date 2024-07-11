// findByCompanyDetailメソッド：企業IDを基に企業詳細を取得するメソッド
// createCompanyDetailメソッド：企業詳細を登録するメソッド


package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.CompanyDetailDTO;

public class CompanyDetailDAO {
    private final String JDBC_URL = "jdbc:postgresql://localhost:5432/postgres";
    private final String DB_MAIL = "postgres";
    private final String DB_PASS = "0322pyora";

    // findByCompanyDetailメソッド：企業IDを基に企業詳細を取得するメソッド
    public CompanyDetailDTO findByCompanyDetail(CompanyDetailDTO findCompanyDetail){
    	//変数のスコープの都合上、変数companyDetailをtryブロックの外で初期化する。
		// 後でデータベースから取得したユーザー情報を格納するための変数
        CompanyDetailDTO companyDetail = null;

        // データベースへ接続（Connectionオブジェクトconnを自動的に閉じるtry-with-resources文）
        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {
            
            // SELECT文を準備
            String sql = "SELECT * FROM company_details WHERE company_id = ?";
            PreparedStatement pStmt = conn.prepareStatement(sql);
            // 1番目のプレースホルダにcompany_idをセット
            pStmt.setInt(1, findCompanyDetail.getCompany_id());

            // SELECT文を実行し、結果をrsに格納
            ResultSet rs = pStmt.executeQuery();

            if (rs.next()) {
                // 結果からデータを取得
                int company_id = rs.getInt("company_id"); // 企業ID
                int company_detail_id = rs.getInt("company_detail_id"); // 基本詳細ID : 主キー
                String management_status = rs.getString("management_status"); // 経営状況
                String business_content = rs.getString("business_content"); // 事業内容
                String job_description = rs.getString("job_description"); // 職務内容
                String work_location = rs.getString("work_location"); // 勤務地
                String remote_work = rs.getString("remote_work"); // リモートワーク
                String working_hours = rs.getString("working_hours"); // 就業時間
                int standard_working_hours = rs.getInt("standard_working_hours"); // 所定労働時間
                int break_time = rs.getInt("break_time"); // 休憩時間
                int break_time_rule = rs.getInt("break_time_rule"); // 休憩時間の指定
                int average_overtime_hours = rs.getInt("average_overtime_hours"); // 平均残業時間
                int annual_holidays = rs.getInt("annual_holidays"); // 年間休日数
                String holiday_type = rs.getString("holiday_type"); // 休日形態
                String paid_holidays = rs.getString("paid_holidays"); // 有給休暇
                String other_holidays = rs.getString("other_holidays"); // 休暇
                String holiday_notes = rs.getString("holiday_notes"); // 休暇メモ
                int annual_salary_upper = rs.getInt("annual_salary_upper"); // 年収上限
                int annual_salary_lower = rs.getInt("annual_salary_lower"); // 年収下限
                int monthly_salary_upper = rs.getInt("monthly_salary_upper"); // 月収上限
                int monthly_salary_lower = rs.getInt("monthly_salary_lower"); // 月収下限
                int basic_salary_upper = rs.getInt("basic_salary_upper"); // 基本給上限
                int basic_salary_lower = rs.getInt("basic_salary_lower"); // 基本給下限
                int fixed_overtime_pay_upper = rs.getInt("fixed_overtime_pay_upper"); // 固定残業代上限
                int fixed_overtime_pay_lower = rs.getInt("fixed_overtime_pay_lower"); // 固定残業代下限
                int fixed_overtime_hours = rs.getInt("fixed_overtime_hours"); // 固定残業時間
                int commuting_allowance = rs.getInt("commuting_allowance"); // 通勤手当
                int housing_allowance = rs.getInt("housing_allowance"); // 住宅手当
                int qualification_support = rs.getInt("qualification_support"); // 資格補助
                int qualification_allowance = rs.getInt("qualification_allowance"); // 資格手当
                int other_allowances = rs.getInt("other_allowances"); // その他手当
                int bonus = rs.getInt("bonus"); // 賞与
                String bonus_record = rs.getString("bonus_record"); // 賞与実績
                String social_insurance = rs.getString("social_insurance"); // 社会保険
                String probation_period = rs.getString("probation_period"); // 試用期間
                int probation_period_changes = rs.getInt("probation_period_changes"); // 試用期間中の変更
                int retirement_benefits = rs.getInt("retirement_benefits"); // 退職金

                // 一致した企業詳細が存在した場合、その企業詳細を表すcompanyDetailDTOインスタンスを生成
                companyDetail =
                    new CompanyDetailDTO(company_id, company_detail_id, management_status, business_content, job_description,
                        work_location, remote_work, working_hours, standard_working_hours, break_time, break_time_rule,
                            average_overtime_hours, annual_holidays, holiday_type, paid_holidays, other_holidays, holiday_notes,
                                annual_salary_upper, annual_salary_lower, monthly_salary_upper, monthly_salary_lower,
                                    basic_salary_upper, basic_salary_lower, fixed_overtime_pay_upper, fixed_overtime_pay_lower,
                                        fixed_overtime_hours, commuting_allowance, housing_allowance, qualification_support,qualification_allowance, other_allowances,
                                            bonus, bonus_record, social_insurance, probation_period, probation_period_changes, retirement_benefits);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

        // DBに企業詳細があれば企業詳細が入った変数companyDetailを返す。なければnullを返すcatchブロックの中のreturn文
        return companyDetail;
    }

    // createCompanyDetailメソッド：企業詳細を登録するメソッド
    public String createCompanyDetail(CompanyDetailDTO newCompanyDetail){
        // データベースへ接続
        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {
            // INSERT文を準備
            String sql = "INSERT INTO company_details (company_id, management_status, business_content, job_description, work_location, remote_work, working_hours, standard_working_hours, break_time, break_time_rule, average_overtime_hours, annual_holidays, holiday_type, paid_holidays, other_holidays, holiday_notes, annual_salary_upper, annual_salary_lower, monthly_salary_upper, monthly_salary_lower, basic_salary_upper, basic_salary_lower, fixed_overtime_pay_upper, fixed_overtime_pay_lower, fixed_overtime_hours, commuting_allowance, housing_allowance, qualification_support, qualification_allowance, other_allowances, bonus, bonus_record, social_insurance, probation_period, probation_period_changes, retirement_benefits) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pStmt = conn.prepareStatement(sql);
            // プレースホルダに値をセット
            pStmt.setInt(1, newCompanyDetail.getCompany_id()); // 企業ID
            pStmt.setString(2, newCompanyDetail.getManagement_status()); // 経営状況
            pStmt.setString(3, newCompanyDetail.getBusiness_content()); // 事業内容
            pStmt.setString(4, newCompanyDetail.getJob_description()); // 職務内容
            pStmt.setString(5, newCompanyDetail.getWork_location()); // 勤務地
            pStmt.setString(6, newCompanyDetail.getRemote_work()); // リモートワーク
            pStmt.setString(7, newCompanyDetail.getWorking_hours()); // 就業時間
            pStmt.setInt(8, newCompanyDetail.getStandard_working_hours()); // 所定労働時間
            pStmt.setInt(9, newCompanyDetail.getBreak_time()); // 休憩時間
            pStmt.setInt(10, newCompanyDetail.getBreak_time_rule()); // 休憩時間の指定
            pStmt.setInt(11, newCompanyDetail.getAverage_overtime_hours()); // 平均残業時間
            pStmt.setInt(12, newCompanyDetail.getAnnual_holidays()); // 年間休日数
            pStmt.setString(13, newCompanyDetail.getHoliday_type()); // 休日形態
            pStmt.setString(14, newCompanyDetail.getPaid_holidays()); // 有給休暇
            pStmt.setString(15, newCompanyDetail.getOther_holidays()); // 休暇
            pStmt.setString(16, newCompanyDetail.getHoliday_notes()); // 休暇メモ
            pStmt.setInt(17, newCompanyDetail.getAnnual_salary_upper()); // 年収上限
            pStmt.setInt(18, newCompanyDetail.getAnnual_salary_lower()); // 年収下限
            pStmt.setInt(19, newCompanyDetail.getMonthly_salary_upper()); // 月収上限
            pStmt.setInt(20, newCompanyDetail.getMonthly_salary_lower()); // 月収下限
            pStmt.setInt(21, newCompanyDetail.getBasic_salary_upper()); // 基本給上限
            pStmt.setInt(22, newCompanyDetail.getBasic_salary_lower()); // 基本給下限
            pStmt.setInt(23, newCompanyDetail.getFixed_overtime_pay_upper()); // 固定残業代上限
            pStmt.setInt(24, newCompanyDetail.getFixed_overtime_pay_lower()); // 固定残業代下限
            pStmt.setInt(25, newCompanyDetail.getFixed_overtime_hours()); // 固定残業時間
            pStmt.setInt(26, newCompanyDetail.getCommuting_allowance()); // 通勤手当
            pStmt.setInt(27, newCompanyDetail.getHousing_allowance()); // 住宅手当
            pStmt.setInt(28, newCompanyDetail.getQualification_support()); // 資格補助
            pStmt.setInt(29, newCompanyDetail.getQualification_allowance()); // 資格手当
            pStmt.setInt(30, newCompanyDetail.getOther_allowances()); // その他手当
            pStmt.setInt(31, newCompanyDetail.getBonus()); // 賞与
            pStmt.setString(32, newCompanyDetail.getBonus_record()); // 賞与実績
            pStmt.setString(33, newCompanyDetail.getSocial_insurance()); // 社会保険
            pStmt.setString(34, newCompanyDetail.getProbation_period()); // 試用期間
            pStmt.setInt(35, newCompanyDetail.getProbation_period_changes()); // 試用期間中の変更
            pStmt.setInt(36, newCompanyDetail.getRetirement_benefits()); // 退職金

            // INSERT文を実行
            int result = pStmt.executeUpdate();

            //executeUpdate()は結果件数が戻り値として返ってくるメソッド(5章参照)
			//↓1でなければとはINSERTが成功したら結果として1が戻り値で帰ってくるので、1じゃないということは失敗を意味する

            if (result != 1) {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return "詳細情報の登録が完了しました";
    }
}
