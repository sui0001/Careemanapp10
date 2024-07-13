<%-- ログアウト画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ログアウト</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerBeforeLogin.jsp" %>

	<%-- contents --%>
	<div class="conteiner">
		<h1 class="blockTitle">Careemanapp10</h1>
		<p class="msg">ログアウトしました</p>
		<p class="nextActionBotton"><button onclick="location.href='/Careemanapp10/welcome'">ホームに戻る</button></p>
		<p class="otherLink"><a href="/Careemanapp10/login">ログイン画面へ</a></p>
	</div>

	<%-- footer --%>
		<%@include file= "footerBeforeLogin.jsp" %>
</body>

</html>