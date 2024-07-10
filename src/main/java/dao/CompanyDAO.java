// findByCompanyメソッド：企業情報をDBで検索し、ヒットした場合リクエストスコープに保存するメソッド
// createCompanyメソッド：企業情報をDBに登録するメソッド


package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.CompanyDTO;

public class CompanyDAO {
    private final String JDBC_URL = "jdbc:postgresql://localhost:5432/postgres";
    private final String DB_MAIL = "postgres";
    private final String DB_PASS = "0322pyora";


    // 企業検索用のメソッド：user_idを元に企業情報を取得する
    public CompanyDTO findByCompany(CompanyDTO findCompany){

        //変数のスコープの都合上、変数accontsをtryブロックの外で初期化する。
		// 後でデータベースから取得したユーザー情報を格納するための変数
        CompanyDTO company = null;

        // データベースへ接続（Connectionオブジェクトconnを自動的に閉じるtry-with-resources文）
        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {
            
            // SELECT文を準備
            String sql = "SELECT * FROM companies WHERE user_id = ?";
            PreparedStatement pStmt = conn.prepareStatement(sql);

            // 1番目のプレースホルダに値をセット
            pStmt.setString(1, findCompany.getUser_id());
            // SELECT文を実行し、結果をrsに格納
            ResultSet rs = pStmt.executeQuery();

            
            if (rs.next()) {
                // 結果からデータを取得
                String user_id = rs.getString("user_id");
                int company_id = rs.getInt("company_id");
                String company_name = rs.getString("company_name");
                String selection_application = rs.getString("selection_application");
                String selection_status = rs.getString("selection_status");
                String selection_date = rs.getString("selection_date");
                String selection_flow = rs.getString("selection_flow");
                String link_hp = rs.getString("link_hp");
                String link_review = rs.getString("link_review");
                String selection_task = rs.getString("selection_task");
                String selection_motivation = rs.getString("selection_motivation");
                String positive_points = rs.getString("positive_points");
                String negative_points = rs.getString("negative_points");
                String points_to_confirm = rs.getString("points_to_confirm");


                // 一致したデータを表すCompanyDTOインスタンスを生成
                company =
                    new CompanyDTO(user_id, company_id, company_name, selection_application,
                        selection_status, selection_date, selection_flow, link_hp, link_review,
                            selection_task, selection_motivation, positive_points, negative_points, points_to_confirm);
            }
        
        }catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

        // DBにユーザー情報があればユーザー情報が入った変数companyを返す。なければnullを返すcatchブロックの中のreturn文
        return company;

    }


    // 企業登録用のメソッド：企業を登録する (ユーザーIDはセッションスコープから取り出して登録)
    public String createCompany(CompanyDTO newCompany){

		// データベースへ接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {

			// SELECT文を準備
			String sql = "SELECT * FROM companies WHERE company_name = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);

            // 1番目のプレースホルダに値をセット
            pStmt.setString(1, newCompany.getCompany_name());

			// SELECTを実行し、結果表を取得
			ResultSet rs = pStmt.executeQuery();

			// 一致したユーザーが存在した場合
			// 入力された情報は既に登録済みですと返す
			if (rs.next()) {
				// 結果表からデータを取得
				return "入力された情報は既に登録済みです";
			}
			// 一致したユーザーが存在しない場合
			// エラーという文字列を返す
		} catch (SQLException e) {
			e.printStackTrace();
			return "エラー";
		}
		
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {

			// INSERT文を準備
            String sql = "INSERT INTO companies(user_id, company_name, selection_application, selection_status, selection_date, selection_flow, link_hp, link_review, selection_task, selection_motivation, positive_points, negative_points, points_to_confirm) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			// INSERT文中の「?」に使用する値を設定しSQLを完成
            pStmt.setString(1, newCompany.getUser_id());
            // pStmt.setInt(2, newCompany.getCompany_id());
            pStmt.setString(2, newCompany.getCompany_name());
            pStmt.setString(3, newCompany.getSelection_application());
            pStmt.setString(4, newCompany.getSelection_status());
            pStmt.setString(5, newCompany.getSelection_date());
            pStmt.setString(6, newCompany.getSelection_flow());
            pStmt.setString(7, newCompany.getLink_hp());
            pStmt.setString(8, newCompany.getLink_review());
            pStmt.setString(9, newCompany.getSelection_task());
            pStmt.setString(10, newCompany.getSelection_motivation());
            pStmt.setString(11, newCompany.getPositive_points());
            pStmt.setString(12, newCompany.getNegative_points());
            pStmt.setString(13, newCompany.getPoints_to_confirm());
			
			// INSERT文を実行
			int result = pStmt.executeUpdate();

			//executeUpdate()は結果件数が戻り値として返ってくるメソッド(5章参照)
			//↓1でなければとはINSERTが成功したら結果として1が戻り値で帰ってくるので、1じゃないということは失敗を意味する
			if (result != 1) {
				return "登録に失敗しました";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return "登録に失敗しました";
		}
		return "登録が完了しました！";

    }


}