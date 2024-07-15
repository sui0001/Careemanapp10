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
		<div class=logo>
			<h1>Careemanapp10</h1>
			<%-- <img src="../../img/sample.jpeg" alt="ロゴ"> --%>
		</div>

		<%-- ログインボタンと新規登録ボタン --%>
		<ul class="headerNavi">
			<li><a href="/Careemanapp10/login" class="headerBotton">ログイン</a></li>
			<li><a href="/Careemanapp10/register" class="headerBotton" >新規登録</a></li>
		</ul>
	</header>
</body>
</html>