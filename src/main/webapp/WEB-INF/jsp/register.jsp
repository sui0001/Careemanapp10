<%-- 新規登録画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>新規登録画面</title>
</head>

<body>
	<h1>新規登録</h1>
	<form action="register" method="post">
		<table>
			<tr>
				<th>ユーザーID</th>
				<td><input type="text" name="user_id" placeholder="数字を入力"></td>
			</tr>
			<tr>
				<th>ユーザーネーム</th>
				<td><input type="text" name="name" placeholder="にゃんたろ"></td>
			</tr>
			<tr>
				<th>年齢</th>
				<td><input type="number" name="age" placeholder="数字を入力"></td>
			</tr>
			<tr>
				<th>メールアドレス</th>
				<td><input type="email" name="mail" placeholder="nekoneko29q@gmail.com"></td>
			</tr>
			<tr>
				<th>パスワード</th>
				<td><input type="password" name="pass" placeholder="パスワードを入力"></td>
			</tr>
			<tr>
				<th>目標</th>
				<td><input type="text" name="goal" placeholder="目標を入力"></td>
			</tr>
			<tr>
				<th>履歴書</th>
				<td><input type="text" name="link_resume" placeholder="履歴書のリンクを入力"></td>
			</tr>
			<tr>
				<th>職務経歴書</th>
				<td><input type="text" name="link_work_history" placeholder="職務経歴書のリンクを入力"></td>
			</tr>
		</table>
		<input type="submit" value="登録">
	</form>

    <p class="home"><a href="/Careemanapp10/welcome">ホームに戻る</a></p>
</body>

</html>
