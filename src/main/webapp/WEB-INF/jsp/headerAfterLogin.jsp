<%-- ログイン後のヘッダー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>
<body>
	<header>
		<%-- ロゴ --%>
		<div class="logo">
			<a href="/Careemanapp10/main" class="logo">
				<%-- <img src="../../img/sample.jpeg" alt="ロゴ"> --%>
				<h1>Careemanapp10</h1>
			</a>
		</div>

		<%-- メニューバー --%>
		<nav>
			<ul class="headerNavi">
				<li><a href="/Careemanapp10/CompanyList">選考状況</a></li>
				<li><a href="/Careemanapp10/CompanyCompare">企業比較</a></li>
				<li><a href="/Careemanapp10/AccountInformation">ユーザー情報</a></li>
				<%-- ログアウトボタン --%>
				<li><a href="/Careemanapp10/logout" class="headerBotton">ログアウト</a></li>
			</ul>
		</nav>

	</header>
</body>
</html>