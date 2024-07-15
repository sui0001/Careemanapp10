<%-- トップページ --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ホーム</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerBeforeLogin.jsp" %>

	<%-- contents --%>
	<div class="conteiner">
		<h1 class="blockTitle">Careemanappへようこそ</h1>
		<%-- <p><button onclick="location.href='/Careemanapp10/login'">ログイン画面へ</button></p> --%>
		<a href="/Careemanapp10/register" class="nextActionButton">はじめる</a>
	</div>
	
	<%-- footer --%>
		<%@include file= "footerBeforeLogin.jsp" %>
</body>

</html>