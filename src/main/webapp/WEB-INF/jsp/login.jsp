<%-- ログイン画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
<link rel="stylesheet" type="text/css" href="../trial/css/login.css" />
</head>

<body>
    <p class="fsize">ログイン画面</p>
        
    <form action="/Careemanapp10/main" method="post">
        <table>
            <tr>
                <th>メールアドレス</th>
                <td><input type="text" name="mail" placeholder="nekoneko29q@gmail.com"></td>
            </tr>
            <tr>
                <th>パスワード</th>
                <td><input type="password" name="pass" placeholder="パスワードを入力"></td>
            </tr>
        </table>
        <p><button type="submit">ログイン</button></p>
    </form>

    <a href="/Careemanapp10/welcome">ホームに戻る</a></p>
    
    <c:if test="${not empty loginError}">
        <p style="color: red;">${loginError}</p>
    </c:if>
</body>

</html>