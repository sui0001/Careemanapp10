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

	<%-- メニューバー
	<nav>
		<ul class="menu">
			<li><a href="/Careemanapp10/login">選考状況</a></li>
			<li><a href="/Careemanapp10/login">企業比較</a></li>
			<li><a href="/Careemanapp10/login">ユーザー情報</a></li>
		</ul>
	</nav> --%>

    <%-- ログインボタンと新規登録ボタン --%>
	<button onclick="location.href='/Careemanapp10/login'">ログイン</button>
    <button onclick="location.href='/Careemanapp10/register'">新規登録</button>


</body>
</html>