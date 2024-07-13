// findByLoginメソッド：ログインに使用されたアカウントの有無を確認するメソッド。LoginService.javaのexecuteメソッドで使用
// findByAccountメソッド：ユーザー情報を取得するメソッド (ユーザー情報画面に遷移する際に使用)
// createメソッド：新規登録するメソッド
// updateメソッド：ユーザー情報を更新するメソッド


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
            String sql = "SELECT * FROM accounts WHERE mail = ? AND pass = ?";
            PreparedStatement pStmt = conn.prepareStatement(sql);
			// 1番目のプレースホルダにmailをセット
            pStmt.setString(1, login.getMail());
			// 2番目のプレースホルダにpassをセット
            pStmt.setString(2, login.getPass());

            // SELECT文を実行し、結果をrsに格納
            ResultSet rs = pStmt.executeQuery();

            
            if (rs.next()) {
                // 結果からデータを取得
                String user_id = rs.getString("user_id");
                String pass = rs.getString("pass");
                String mail = rs.getString("mail");
                String name = rs.getString("name");
                int age = rs.getInt("age");
				String goal = rs.getString("goal");
				String link_resume = rs.getString("link_resume");
				String link_work_history = rs.getString("link_work_history");

			// 一致したユーザーが存在した場合、そのユーザーを表すAccountsインスタンスを生成
			accounts = new Accounts(user_id, pass, mail, name, age, goal, link_resume, link_work_history);

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

        // DBにユーザー情報があればユーザー情報が入った変数accountsを返す。なければnullを返すcatchブロックの中のreturn文
        return accounts;
    }



	// findByAccountメソッド：ユーザー情報を取得するメソッド
	public Accounts findByAccount(Accounts findAccount) {
		//変数のスコープの都合上、変数accontsをtryブロックの外で初期化する。
		// 後でデータベースから取得したユーザー情報を格納するための変数
		Accounts accounts = null;

		// データベースへ接続（Connectionオブジェクトconnを自動的に閉じるtry-with-resources文）
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {

			// SELECT文を準備
			String sql = "SELECT * FROM accounts WHERE user_id = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			// 1番目のプレースホルダにuser_idをセット
			pStmt.setString(1, findAccount.getUser_id());
			// System.out.println(findAccount.getUser_id());

			// SELECT文を実行し、結果をrsに格納
			ResultSet rs = pStmt.executeQuery();

			if (rs.next()) {
				// 結果からデータを取得
				String user_id = rs.getString("user_id");
				String pass = rs.getString("pass");
				String mail = rs.getString("mail");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String goal = rs.getString("goal");
				String link_resume = rs.getString("link_resume");
				String link_work_history = rs.getString("link_work_history");

				// 一致したユーザーが存在した場合、そのユーザーを表すAccountsインスタンスを生成
				accounts = new Accounts(user_id, pass, mail, name, age, goal, link_resume, link_work_history);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		// DBにユーザー情報があればユーザー情報が入った変数accountsを返す。なければnullを返すcatchブロックの中のreturn文
		return accounts;
	}



	// createメソッド：新規登録するメソッド
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
			String sql = "INSERT INTO accounts(user_id, pass, mail, name, age, goal, link_resume, link_work_history) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			// INSERT文中の「?」に使用する値を設定しSQLを完成
			pStmt.setString(1, newAccount.getUser_id());
			pStmt.setString(2, newAccount.getPass());
			pStmt.setString(3, newAccount.getMail());
			pStmt.setString(4, newAccount.getName());
			pStmt.setInt(5, newAccount.getAge());
			pStmt.setString(6, newAccount.getGoal());
			pStmt.setString(7, newAccount.getLink_resume());
			pStmt.setString(8, newAccount.getLink_work_history());
			
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



	// updateメソッド：ユーザー情報を更新するメソッド
	public String update(Accounts updateAccount) {
		// データベースへ接続
		try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {

			// UPDATE文を準備
			String sql = "UPDATE accounts SET pass = ?, mail = ?, name = ?, age = ?, goal = ?, link_resume = ?, link_work_history = ? WHERE user_id = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			// UPDATE文中の「?」に使用する値を設定しSQLを完成
			pStmt.setString(1, updateAccount.getPass());
			pStmt.setString(2, updateAccount.getMail());
			pStmt.setString(3, updateAccount.getName());
			pStmt.setInt(4, updateAccount.getAge());
			pStmt.setString(5, updateAccount.getGoal());
			pStmt.setString(6, updateAccount.getLink_resume());
			pStmt.setString(7, updateAccount.getLink_work_history());
			pStmt.setString(8, updateAccount.getUser_id());

			// UPDATE文を実行
			int result = pStmt.executeUpdate();

			

			//executeUpdate()は結果件数が戻り値として返ってくるメソッド(5章参照)
			//↓1でなければとはUPDATEが成功したら結果として1が戻り値で帰ってくるので、1じゃないということは失敗を意味する
			if (result != 1) {
				return "更新に失敗しました";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return "更新に失敗しました";
		}
		return "更新が完了しました！";
	}
}

