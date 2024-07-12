<%-- ユーザー情報更新画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- リクエストスコープから取り出す処理 (必要ファイルのインポート忘れない) --%>
<%@ page import="domain.*" %>
<request.setCharacterEncoding("UTF-8"); %>
<% Accounts requestAccount = (Accounts)request.getAttribute("account"); %>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ユーザー情報更新</title>
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>

        <%-- ページタイトルを表示 --%>
        <h1>ユーザー情報更新</h1>

        <%-- ユーザー情報を更新 --%>
        <form action="/Careemanapp10/AccountInformation" method="post">
            <table>
                <tr>
                    <th>ユーザーネーム</th>
                    <td><input type="text" name="name" placeholder="<%= requestAccount.getName() %>"></td>
                </tr>
                <tr>
                    <th>年齢</th>
                    <td><input type="number" name="age" placeholder="<%= requestAccount.getAge() %>"></td>
                </tr>
                <tr>
                    <th>メールアドレス</th>
                    <td><input type="email" name="mail" placeholder="<%= requestAccount.getMail() %>"></td>
                </tr>
                <tr>
                    <th>パスワード</th>
                    <td><input type="password" name="pass" placeholder="パスワードを入力"></td>
                </tr>
                <tr>
                    <th>目標</th>
                    <td><input type="text" name="goal" placeholder="<%= requestAccount.getGoal() %>"></td>
                </tr>
                <tr>
                    <th>履歴書</th>
                    <td><input type="text" name="link_resume" placeholder="<%= requestAccount.getLink_resume() %>"></td>
                </tr>
                <tr>
                    <th>職務経歴書</th>
                    <td><input type="text" name="link_work_history" placeholder="<%= requestAccount.getLink_work_history() %>"></td>
                </tr>
            </table>
            <input type="submit" value="更新">
        </form>

	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>