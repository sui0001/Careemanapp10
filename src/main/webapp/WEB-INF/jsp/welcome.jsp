<%-- トップページ --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ホーム</title>
</head>

<body>
	<%-- header --%>
		<%@include file= "headerBeforeLogin.jsp" %>

	<%-- contents --%>

		<h1>Careemanappへようこそ</h1>
		<p><button onclick="location.href='/Careemanapp10/register'">新規登録画面へ</button></p>
		<p><button onclick="location.href='/Careemanapp10/login'">ログイン画面へ</button></p>

	<%-- footer --%>
		<%@include file= "footerBeforeLogin.jsp" %>
</body>

</html>