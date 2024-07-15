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
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>
    <div class="conteiner">

        <h1 class="blockTitle">ユーザー情報</h1>

            <%-- ユーザー情報を表示 --%>
            <table class="accountTable">
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
            
            <%-- ユーザー情報の削除画面へ遷移するボタン (未完成) --%>
            <a href="/Careemanapp10/welcome" class="cancelButton">削除する</a>

            <%-- ユーザー情報の更新画面へ遷移するボタン --%>
            <a href="/Careemanapp10/AccountUpdate"  class="accountUpdateButton">更新する</a>
    </div>
	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>