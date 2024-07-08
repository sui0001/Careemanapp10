<%-- ユーザー情報画面 --%>

<%-- TODO：ユーザー情報のテーブルを作成する --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ユーザー情報</title>
</head>

<body>
    <%-- ページタイトルを表示する --%>
    <div class="title">
        <p>ユーザー情報</p>
    </div>

    <%-- ユーザー情報を表示 --%>
    <div class="userInfoTable">
        // ユーザー情報のテーブルを作成する
    </div>
    
    <%-- ユーザー情報の更新画面へ遷移するボタン --%>
    <form action="/Careemanapp10/AccountUpdate" method="get">
        <input type="submit" value="更新する">
    </form>
</body>

</html>