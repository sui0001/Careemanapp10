package dao;

public class InterviewDAO {
    private final String JDBC_URL = "jdbc:postgresql://localhost:5432/postgres";
    private final String DB_MAIL = "postgres";
    private final String DB_PASS = "0322pyora";

    // 取得するメソッド
    // public CompanyDTO findByCompany(CompanyDTO companylist){

    //     //変数のスコープの都合上、変数accontsをtryブロックの外で初期化する。
	// 	// 後でデータベースから取得したユーザー情報を格納するための変数
    //     CompanyDTO company = null;

    //     // データベースへ接続（Connectionオブジェクトconnを自動的に閉じるtry-with-resources文）
    //     try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_MAIL, DB_PASS)) {
            
    //         // SELECT文を準備
    //         String sql = "SELECT ０００ FROM companies WHERE ０００ = ?";
    //         // プレースホルダに値をセット (user_id予定)

    //         // SELECT文を実行し、結果をrsに格納
    //         ResultSet rs = pStmt.executeQuery();

            
    //         if (rs.next()) {
    //             // 結果からデータを取得 (for文かwhile文で取得)


    //             // 一致したデータを表すCompanyDTOインスタンスを生成
    //             company = new CompanyDTO(０００);
    //         }
        
    //     }catch (SQLException e) {
    //         e.printStackTrace();
    //         return null;
    //     }

    //     // DBにユーザー情報があればユーザー情報が入った変数accountsを返す。なければnullを返すcatchブロックの中のreturn文
    //     return company;
    // }

    // 登録するメソッド
}
