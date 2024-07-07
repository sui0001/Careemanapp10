package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//①実行したときにindex.jspに処理を転送（フォワード）しているサーブレットクラス
@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		//フォワード。welcome.jsp(ここでいうトップページに処理が飛ぶ)
		RequestDispatcher rs = req.getRequestDispatcher("/WEB-INF/jsp/welcome.jsp");
		rs.forward(req, res);
	}
}
