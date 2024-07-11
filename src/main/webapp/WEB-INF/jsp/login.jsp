<%-- ログイン画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
<link rel="stylesheet" type="text/css" href="../trial/css/login.css" />
<link rel="icon" href="../trial/favi/favi_sou/favicon.ico" />
</head>

<body>
    <div class="container">
	<form action="/Careemanapp10/main" method="post">
        <p class="fsize">ログイン画面</p>
        <table>
            <tr>
                <td>メールアドレス</td>
                <td><input type="text" name="mail" placeholder="nekoneko29q@gmail.com"></td>
            </tr>
            <tr>
                <td>パスワード</td>
                <td><input type="password" name="pass" placeholder="パスワードを入力"></td>
            </tr>
        </table>
        <p><button type="submit">ログイン</button></p>
    </form>
        <div class="home">
            <p><a href="/Careemanapp10/welcome">ホームに戻る</a></p>
        </div>
    </div>
    
    <div class="error">
        <c:if test="${not empty loginError}">
            <p style="color: red;">${loginError}</p>
        </c:if>
    </div>
</body>
</html>