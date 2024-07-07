// GETメソッド：ログアウト画面のlogout.jspへフォワード

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		HttpSession session = req.getSession();//session.invalidateメソッドを使いたいからセッションスコープ使います宣言をしている
		session.invalidate();//セッションスコープの破棄

		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/jsp/logout.jsp");
		rd.forward(req, res);
	}

}
