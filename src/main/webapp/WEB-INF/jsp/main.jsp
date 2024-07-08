<%-- メイン画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>メイン画面</title>
<link rel="stylesheet" type="text/css" href="/Careemanapp10/css/main.css">
	<ul class="menu">
		<li><a href="/Careemanapp10/CompanyList">選考状況</a></li>
		<li><a href="/Careemanapp10/CompanyCompare">企業比較</a></li>
		<li><a href="/Careemanapp10/AccountInformation">ユーザー情報</a></li>
		<li><a href="/Careemanapp10/logout">ログアウト</a></li>
	</ul>
</head>

<body>
	<%-- タイトルを表示する --%>
	<div class="title">
		<p>Careemanapp10</p>
	</div>

	<%-- ユーザー名を表示する --%>
	<div class="welcome">
		<p>ようこそ <%= session.getAttribute("username") %> さん</p>
	</div>

	<%-- 目標を表示する --%>
	<div class="goal">
		<p>目標</p>
		<p>// ユーザーが登録した目標を表示するコードを記述</p>
	</div>

	<%-- カレンダーを表示する(タスクを表示できるようにしたい) --%>
	<div class="calendar">
		<p>1週間</p>
		<p>// カレンダーを表示するコードを記述</p>
	</div>
</body>

</html>