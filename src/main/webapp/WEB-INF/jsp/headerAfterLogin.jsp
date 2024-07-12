<%-- ログイン後のヘッダー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- タイトルを表示する
	<h1>Careemanapp10</h1> --%>

    <%-- ロゴ --%>
    <img src="logo.png" alt="ロゴ" width="100" height="100">

	<%-- メニューバー --%>
	<nav>
		<ul class="menu">
			<li><a href="/Careemanapp10/CompanyList">選考状況</a></li>
			<li><a href="/Careemanapp10/CompanyCompare">企業比較</a></li>
			<li><a href="/Careemanapp10/AccountInformation">ユーザー情報</a></li>
		</ul>
	</nav>

    <%-- ログアウトボタン --%>
	<button onclick="location.href='/Careemanapp10/logout'">ログアウト</button>
</body>
</html>