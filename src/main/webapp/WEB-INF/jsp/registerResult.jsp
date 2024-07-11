<%-- 新規登録結果画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String msg = (String)request.getAttribute("msg"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録結果</title>
<link rel="stylesheet" type="text/css" href="../trial/css/registerResult.css" />
<link rel="icon" href="../trial/favi/favi_sou/favicon.ico" />
</head>
<body>

    <div class="container">
        <p class="error" style="color: red;"><%= msg %></p>
        <p><a href="/Careemanapp10/register">新規登録画面へ</a></p>
        <p><a href="/Careemanapp10/login">ログイン画面へ</a></p>
        <p><a href="/Careemanapp10/welcome">ホームに戻る</a></p>
    </div>

</body>
</html>
