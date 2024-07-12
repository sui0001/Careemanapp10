<%-- メイン画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>メイン画面</title>
</head>

<body>
	<%-- タイトルを表示する --%>
	<h1>Careemanapp10</h1>

	<%-- メニューバー --%>
	<nav>
		<ul class="menu">
			<li><a href="/Careemanapp10/CompanyList">選考状況</a></li>
			<li><a href="/Careemanapp10/CompanyCompare">企業比較</a></li>
			<li><a href="/Careemanapp10/AccountInformation">ユーザー情報</a></li>
			<li><a href="/Careemanapp10/logout">ログアウト</a></li>
		</ul>
	</nav>

	<%-- ユーザー名を表示する --%>
	<p>ようこそ <%= session.getAttribute("userName") %> さん</p>

	<%-- 目標を表示する --%>
	<p>目標</p>
	<p>// ユーザーが登録した目標を表示するコードを記述</p>

	<%-- カレンダーを表示する(タスクを表示できるようにしたい) --%>
	<p>1週間</p>
	<p>// カレンダーを表示するコードを記述</p>
</body>

</html>