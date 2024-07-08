<%-- ユーザー情報画面 --%>

<%-- TODO：ユーザー情報のテーブルを作成する --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー情報</title>
</head>
<body>
    <h1>ユーザー情報</h1>
    <%-- ユーザー情報を表示 --%>
    // ユーザー情報のテーブルを作成する
    <%-- ユーザー情報の更新画面へ遷移するボタン --%>
    <form action="/Careemanapp10/AccountUpdate" method="get">
        <input type="submit" value="更新する">
    </form>
</body>
</html>