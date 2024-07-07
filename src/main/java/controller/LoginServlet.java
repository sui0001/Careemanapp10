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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        // login.jspに処理を転送（フォワード）
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
        rd.forward(req, res);
    }

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
            session.setAttribute("userName", account.getName());
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
            rd.forward(req, res);
        } else {
            req.setAttribute("loginError", "メールアドレスまたはパスワード、もしくは両方が正しくありません。");
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
            rd.forward(req, res);
        }
    }
}