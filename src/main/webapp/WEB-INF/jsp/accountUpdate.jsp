<%-- ユーザー情報更新画面 --%>

<%-- TODO：フォームの入力項目を追加する --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ユーザー情報更新</title>
</head>

<body>
    <%-- ページタイトルを表示 --%>
    <div class="title">
        <p>ユーザー情報更新</p>
    </div>

    <%-- ユーザー情報を更新 --%>
    <form action="/Careemanapp10/AccountInformation" method="post">
        // フォームの入力項目を追加する
        <input type="submit" value="更新">
    </form>
</body>

</html>