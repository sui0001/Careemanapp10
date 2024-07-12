<%-- ユーザー情報画面 --%>

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
<title>ユーザー情報</title>
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>

        <%-- ページタイトルを表示する --%>
        <h1>ユーザー情報</h1>

        <%-- ユーザー情報を表示 --%>
        <table>
            <tr>
                <th>ユーザーID</th>
                <td><%= requestAccount.getUser_id() %></td>
            </tr>
            <tr>
                <th>ユーザーネーム</th>
                <td><%= requestAccount.getName() %></td>
            </tr>
            <tr>
                <th>年齢</th>
                <td><%= requestAccount.getAge() %></td>
            </tr>
            <tr>
                <th>メール</th>
                <td><%= requestAccount.getMail() %></td>
            </tr>
            <tr>
                <th>目標</th>
                <td><%= requestAccount.getGoal() %></td>
            </tr>
            <tr>
                <th>履歴書</th>
                <td><%= requestAccount.getLink_resume() %></td>
            </tr>
            <tr>
                <th>職務経歴書</th>
                <td><%= requestAccount.getLink_work_history() %></td>
            </tr>
        </table>
        
        <%-- ユーザー情報の更新画面へ遷移するボタン --%>
        <form action="/Careemanapp10/AccountUpdate" method="get">
            <input type="submit" value="更新する">
        </form>
    
	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>