package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Accounts;
import service.PostAccountService;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
	
	      RequestDispatcher dis = req.
	              getRequestDispatcher("/WEB-INF/jsp/register.jsp");
	          dis.forward(req, res);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	    // リクエストパラメータの取得
	    request.setCharacterEncoding("UTF-8");

	      // 新規ユーザー情報を取得
	    String userId =  (String) request.getParameter("id");
	    String password =  (String) request.getParameter("pass");
	    String mail =  (String) request.getParameter("mail");
	    String name =  (String) request.getParameter("name");
	    String s_age =  request.getParameter("age");
//	    int age = Integer.parseInt(s_age);
	    
	    int age;
	    if (!s_age.isEmpty()) {
	        age = Integer.parseInt(s_age);
	    } else {
	        // 空の場合のエラーハンドリングまたはデフォルト値の設定
	        age = 0;  // または適切なデフォルト値を設定
	    }
	    
	    //新規ユーザー情報をAccountインスタンスに保存
	    Accounts newAccount = new Accounts(userId, password, mail, name, age);
	    request.setAttribute("newAccount", newAccount);

	    //DBに保存
	    PostAccountService postaccountService = new PostAccountService();
	    String msg = postaccountService.execute(newAccount);
	    
	    //登録結果をリクエストスコープに保存
	    request.setAttribute("msg", msg);

	    // フォワード
	    RequestDispatcher dispatcher = request.getRequestDispatcher(
	        "/WEB-INF/jsp/registerResult.jsp");
	    dispatcher.forward(request, response);
	}
}