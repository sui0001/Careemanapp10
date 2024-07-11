package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.InterviewDTO;

public class InterviewDAO {
    private final String JDBC_URL = "jdbc:postgresql://localhost:5432/postgres";
    private final String DB_MAIL = "postgres";
    private final String DB_PASS = "0322pyora";


    // 面接検索用のメソッド：company_idを元に面接情報を取得する
    public List<InterviewDTO> findByInterview(InterviewDTO findInterview){

        // 変数のスコープの都合上、変数interviewsをtryブロックの外で初期化する。
        // 後でデータベースから取得した面接情報を格納するための変数
        List<InterviewDTO> interviews = new ArrayList<>();

        // データベースへ接続（Connectionオブジェクトconnを自動的に閉じるtry-with-resources文）
        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {
            
            // SELECT文を準備
            String sql = "SELECT * FROM interviews WHERE company_id = ?";
            PreparedStatement pStmt = conn.prepareStatement(sql);

            // 1番目のプレースホルダに値をセット
            pStmt.setInt(1, findInterview.getCompany_id());
            // SELECT文を実行し、結果をrsに格納
            ResultSet rs = pStmt.executeQuery();

            
            while (rs.next()) {
                // 結果からデータを取得
                int company_id = rs.getInt("company_id");
                int interview_id = rs.getInt("interview_id");
                String interview_date = rs.getString("interview_date");
                String interviewer_name = rs.getString("interviewer_name");
                String interview_content_basic = rs.getString("interview_content_basic");
                String interview_content_additional = rs.getString("interview_content_additional");
                String interview_memo = rs.getString("interview_memo");

                // 一致したデータを表すInterviewDTOインスタンスを生成
                InterviewDTO interview =
                    new InterviewDTO(company_id, interview_id, interview_date, interviewer_name, interview_content_basic, interview_content_additional, interview_memo);
                
                // interviewsリストに追加
                interviews.add(interview);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return interviews;
    }


    // 面接情報をDBに登録するメソッド
    public String createInterview(InterviewDTO interview) {
        // データベースへ接続（Connectionオブジェクトconnを自動的に閉じるtry-with-resources文）
        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {
            // INSERT文を準備
            String sql = "INSERT INTO interviews(company_id, interview_date, interviewer_name, interview_content_basic, interview_content_additional, interview_memo) VALUES(?, ?, ?, ?, ?, ?)";
            PreparedStatement pStmt = conn.prepareStatement(sql);

            // プレースホルダに値をセット (interview_idは自動採番なので指定しない)
            pStmt.setInt(1, interview.getCompany_id());
            System.out.println("DAO : " + interview.getCompany_id());
            pStmt.setString(2, interview.getInterview_date());
            pStmt.setString(3, interview.getInterviewer_name());
            pStmt.setString(4, interview.getInterview_content_basic());
            pStmt.setString(5, interview.getInterview_content_additional());
            pStmt.setString(6, interview.getInterview_memo());

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
        return "面接情報の登録が完了しました";
    }
}
