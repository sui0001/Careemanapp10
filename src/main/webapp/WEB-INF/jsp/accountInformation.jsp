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
        <div class="accountTableBlock">
            <table class="accountTable">
                <tr>
                    <th>ユーザーID</th>
                    <td><%= requestAccount.getUser_id() %></td>
                </tr>
                <tr>
                    <th>ユーザー名</th>
                    <td><%= requestAccount.getName() %></td>
                </tr>
                <tr>
                    <th>年齢</th>
                    <td><%= requestAccount.getAge() %> 歳</td>
                </tr>
                <tr>
                    <th>メール</th>
                    <td><%= requestAccount.getMail() %></td>
                </tr>
            <%-- </table>
            <table class="accountTable"> --%>
                <tr>
                    <th>目標</th>
                    <td>
                        <% if(requestAccount.getGoal() == null){ %>
                            目標は未設定です。
                        <% }else{ %>
                            <%= requestAccount.getGoal() %>
                        <% } %>
                    </td>
                </tr>
                <tr>
                    <th>履歴書</th>
                    <td>
                        <% if(requestAccount.getLink_resume() == null){ %>
                            履歴書は未登録です。
                        <% }else{ %>
                            <a href="<%= requestAccount.getLink_resume() %>"><%= requestAccount.getLink_resume() %> </a>
                        <% } %>
                    </td>
                </tr>
                <tr>
                    <th>職務経歴書</th>
                    <td>
                        <% if(requestAccount.getLink_work_history() == null){ %>
                            職務経歴書は未登録です。
                        <% }else{ %>
                            <a href="<%= requestAccount.getLink_work_history() %>"><%= requestAccount.getLink_work_history() %> </a>
                        <% } %>
                    </td>
                </tr>
            </table>
        </div>
        
        <ul class="buttonList">
            <li>
                <%-- ユーザー情報の削除画面へ遷移するボタン (未完成) --%>
                <button class="cancelButton" onclick="location.href='/Careemanapp10/welcome'">削除する</button>
            </li>
            <li>
                <%-- ユーザー情報の更新画面へ遷移するボタン --%>
                <button class="accountUpdateButton" onclick="location.href='/Careemanapp10/AccountUpdate'">更新する</button>
            </li>
    </div>

	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>