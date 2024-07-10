// GETメソッド：メイン画面のmain.jspに遷移する
// POSTメソッド：ログイン情報を取得し、DBに保存して結果をセッションスコープに保存し、メイン画面のmain.jspへフォワード

// TODO：セッションスコープにユーザーIDも保存する
// ログアウト失敗時にlogin.jspへの戻り方を変更する (今はURLがmainのままになっているのでLoginと表示されるようにする) 


package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Accounts;
import dto.LoginDTO;
import service.LoginService;


@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	// GETメソッド：メイン画面のmain.jspに遷移する
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		RequestDispatcher rs = req.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
		rs.forward(req, res);
	}
	
	
    // POSTメソッド：ログイン情報を取得し、DBに保存して結果をセッションスコープに保存し、メイン画面のmain.jspへフォワード
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        // login.jspで入力フォームに入力した値を取り出す。
        req.setCharacterEncoding("UTF-8");
        String mail = req.getParameter("mail");
        String pass = req.getParameter("pass");

        // もし入力フォームを何も指定しないでボタンを押したらエラーメッセージを出力してlogin.jspに処理を戻す
        if (mail == null || mail.isEmpty() || pass == null || pass.isEmpty()) {
            req.setAttribute("loginError", "メールアドレスまたはパスワード、もしくは両方が正しくありません。");
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
            rd.forward(req, res);
            return;
        }

        // セッションスコープにキー（引き出し）の名前をnameとして保存。
        HttpSession session = req.getSession();
        session.setAttribute("name", mail);

        // DBに入ってる値と、入力された値が等しいかどうかのログインチェックを行うためDTOをnewして、Serviceクラスのメソッドを実行
        LoginDTO login = new LoginDTO(mail, pass);
        LoginService loginService = new LoginService();
        Accounts account = loginService.execute(login);

        if (account != null) {
            // ログイン成功時の処理：セッションスコープにユーザー名を保存してメイン画面のmain.jspに遷移する
            session.setAttribute("user_id", account.getUser_id());
            session.setAttribute("userName", account.getName());
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
            rd.forward(req, res);
        } else {
            // ログイン失敗時の処理：エラーメッセージをリクエストスコープに保存してログイン画面のlogin.jspに再度処理を戻す
            req.setAttribute("loginError", "メールアドレスまたはパスワード、もしくは両方が正しくありません。");
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
            rd.forward(req, res);
        }
    }

}
