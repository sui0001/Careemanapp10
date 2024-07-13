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

		<%-- ユーザー名を表示する --%>
		<p class="welcome">ようこそ <%= session.getAttribute("userName") %> さん</p>

		<%-- 目標を表示する --%>
		<table>
			<tr>
				<th>目標</th>
				<td><%= session.getAttribute("goal") %></td>
			</tr>
		</table>

		<%-- カレンダーを表示する(タスクを表示できるようにしたい) --%>
		<p class="calendar">// カレンダーを表示するコードを記述</p>
	</div>

	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>