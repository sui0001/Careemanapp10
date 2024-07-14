<%-- メイン画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>メイン画面</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>
	<div class="conteiner">

		<h1 class="blockTitle">Careemanapp10</h1>


		<%-- ユーザー名を表示する --%>
		<p class="welcome">ようこそ <%= session.getAttribute("userName") %> さん</p>

		<%-- 目標を表示する --%>
			<% if (session.getAttribute("goal") == null) { %>
				<p class="goal">目標は未設定です。</p>
			<% } else { %>
				<p class="goal"><%= session.getAttribute("goal") %></p>
			<% } %>

		<%-- カレンダーを表示する(タスクを表示できるようにしたい) --%>
		<p class="calendar">// カレンダーを表示するコードを記述</p>
	</div>

	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>