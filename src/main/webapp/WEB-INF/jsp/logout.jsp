<%-- ログアウト画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ログアウト</title>
</head>

<body>
	<%-- header --%>
		<%@include file= "headerBeforeLogin.jsp" %>

	<%-- contents --%>
		<p>ログアウトしました</p>
		<p><button onclick="location.href='/Careemanapp10/welcome'">ホームに戻る</button></p>


	<%-- footer --%>
		<%@include file= "footerBeforeLogin.jsp" %>
</body>

</html>