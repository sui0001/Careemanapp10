<%-- 新規登録結果画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% String msg = (String)request.getAttribute("msg"); %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>新規登録結果</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerBeforeLogin.jsp" %>

	<%-- contents --%>
	<div class="conteiner">
		<h1 class="blockTitle">Careemanapp10</h1>
        <p class="msg"><%= msg %></p>
		<p><button class="nextActionButton" onclick="location.href='/Careemanapp10/login'">ログイン画面へ</button></p>
		<p><a href="/Careemanapp10/welcome" class="otherLink">ホームに戻る</a></p>
	</div>
	
	<%-- footer --%>
		<%@include file= "footerBeforeLogin.jsp" %>
</body>

</html>
