<%-- ユーザー情報画面 --%>

<%-- TODO：ユーザー情報のテーブルを作成する --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <%-- ページタイトルを表示する --%>
    <div class="title">
        <p>ユーザー情報</p>
    </div>

    <%-- ユーザー情報を表示 --%>
    <div class="userInfoTable">
        <table>
            <tr>
            <th>ユーザーID</th>
            <td><%= requestAccount.getUser_id() %></td>
            </tr>
            <tr>
            <th>名前</th>
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
        </table>
    </div>
    
    <%-- ユーザー情報の更新画面へ遷移するボタン --%>
    <form action="/Careemanapp10/AccountUpdate" method="get">
        <input type="submit" value="更新する">
    </form>
</body>

</html>