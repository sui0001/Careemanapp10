<%-- 新規登録結果画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% String msg = (String)request.getAttribute("msg"); %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>新規登録結果</title>
</head>

<body>
	<%-- header --%>
		<%@include file= "headerBeforeLogin.jsp" %>

	<%-- contents --%>

        <p class="error" style="color: red;"><%= msg %></p>
        <%-- <p><a href="/Careemanapp10/register">新規登録画面へ</a></p> --%>
		<p><button onclick="location.href='/Careemanapp10/login'">ログイン画面へ</button></p>
        <p><a href="/Careemanapp10/welcome">ホームに戻る</a></p>

	<%-- footer --%>
		<%@include file= "footerBeforeLogin.jsp" %>
</body>

</html>
