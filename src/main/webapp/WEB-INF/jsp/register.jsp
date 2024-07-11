<%-- 新規登録画面 --%>
<%-- ユーザーID、パスワード、メール、ユーザーネーム、年齢を入力するフォーム --%>
<%-- トップページ(ホーム画面)に遷移するリンクを設置 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録画面</title>
<link rel="stylesheet" type="text/css" href="../trial/css/register.css" />
<link rel="icon" href="../trial/favi/favi_sou/favicon.ico" />
</head>

<body>
    <div class="container">
	<h2>新規登録</h2>
	<form action="register" method="post">
		<p>ユーザーID<br>
			<input type="text" name="user_id" placeholder="数字を入力">
		</p>
		
		<p>パスワード<br>
			<input type="password" name="pass" placeholder="パスワードを入力">
		</p>
		
		<p>メール<br>
			<input type="email" name="mail" placeholder="nekoneko29q@gmail.com">
		</p>
		
		<p>ユーザーネーム<br>
			<input type="text" name="name" placeholder="にゃんたろ">
		</p>
		
		<p>年齢<br>
			<input type="number" name="age" placeholder="数字を入力">
		</p>

		<p>目標<br>
			<input type="text" name="goal" placeholder="目標を入力">
		</p>

		<p>履歴書<br>
			<input type="text" name="link_resume" placeholder="履歴書のリンクを入力">
		</p>

		<p>職務経歴書<br>
			<input type="text" name="link_work_history" placeholder="職務経歴書のリンクを入力">
		</p>
		
		<input type="submit" value="登録">
	</form>
	
    <p class="home"><a href="/Careemanapp10/welcome">ホームに戻る</a></p>
    
    </div>
</body>

</html>
