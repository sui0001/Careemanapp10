package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.Accounts;
import dto.LoginDTO;

public class AccountsDAO {

    private final String JDBC_URL = "jdbc:postgresql://localhost:5432/postgres";
    private final String DB_MAIL = "postgres";
    private final String DB_PASS = "0322pyora";


	// findByLoginメソッド：ログインに使用されたアカウントの有無を確認するメソッド。LoginService.javaのexecuteメソッドで使用
	public Accounts findByLogin(LoginDTO login) {
    	//変数のスコープの都合上、変数accontsをtryブロックの外で初期化する。
		// 後でデータベースから取得したユーザー情報を格納するための変数
        Accounts accounts = null;

        // データベースへ接続（Connectionオブジェクトconnを自動的に閉じるtry-with-resources文）
        try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {
            
            // SELECT文を準備
            String sql = "SELECT user_id, pass, mail, name, age FROM accounts WHERE mail = ? AND pass = ?";
            PreparedStatement pStmt = conn.prepareStatement(sql);
			// 1番目のプレースホルダにmailをセット
            pStmt.setString(1, login.getMail());
			// 2番目のプレースホルダにpassをセット
            pStmt.setString(2, login.getPass());

            // SELECT文を実行し、結果をrsに格納
            ResultSet rs = pStmt.executeQuery();

            
            if (rs.next()) {
                // 結果からデータを取得
                String userId = rs.getString("user_id");
                String pass = rs.getString("pass");
                String mail = rs.getString("mail");
                String name = rs.getString("name");
                int age = rs.getInt("age");

             // 一致したユーザーが存在した場合、そのユーザーを表すAccountsインスタンスを生成
                accounts = new Accounts(userId, pass, mail, name, age);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

        // DBにユーザー情報があればユーザー情報が入った変数accountsを返す。なければnullを返すcatchブロックの中のreturn文
        return accounts;
    }
    


	// createメソッド
    public String create(Accounts newAccount) {

		// データベースへ接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {

			// SELECT文を準備
			String sql = "SELECT user_id, pass, mail, name, age FROM accounts WHERE mail = ? AND pass = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, newAccount.getMail());
			pStmt.setString(2, newAccount.getPass());

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
			String sql = "INSERT INTO accounts(user_id, pass, mail, name, age) VALUES(?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			// INSERT文中の「?」に使用する値を設定しSQLを完成
			pStmt.setString(1, newAccount.getUserId());
			pStmt.setString(2, newAccount.getPass());
			pStmt.setString(3, newAccount.getMail());
			pStmt.setString(4, newAccount.getName());
			pStmt.setInt(5, newAccount.getAge());
			
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

