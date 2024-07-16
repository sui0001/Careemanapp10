<%-- ログイン画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerBeforeLogin.jsp" %>

	<%-- contents --%>
    <div class="conteiner">

        <h1 class="blockTitle">ログイン</h1>
        
        <c:if test="${not empty loginError}">
            <p style="color: red;">${loginError}</p>
        </c:if>
            
        <form class="form" action="/Careemanapp10/main" method="post">
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
			<p><button class="submitButton" type="submit">ログイン</button></p>
        </form>
        
		<%-- <p><button class="cancelButton" onclick="location.href='/Careemanapp10/welcome'">キャンセル</button></p> --%>
		<p><a href="/Careemanapp10/register" class="otherLink">アカウントをお持ちでない方はこちら</a></p>

        
    </div>

	<%-- footer --%>
		<%@include file= "footerBeforeLogin.jsp" %>
</body>

</html>