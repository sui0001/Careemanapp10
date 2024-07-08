// GETメソッド：ログイン画面のlogin.jspへフォワード


package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    // GETメソッド：ログイン画面のlogin.jspへフォワード
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        // login.jspに処理を転送（フォワード）
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/jsp/login.jsp");
        rd.forward(req, res);
    }

}