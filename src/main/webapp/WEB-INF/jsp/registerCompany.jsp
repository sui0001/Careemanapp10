<%-- 企業情報登録ページ --%>

<%-- TODO：企業情報の入力フォームの中身を作成する --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>企業登録</title>
</head>

<body>
    <%-- ページタイトルを表示する --%>
    <div class="title">
        <p>企業登録</p>
    </div>

    <%-- 企業情報を登録する --%>
    <form action="/Careemanapp10/CompanyList" method="post">
        // フォームの入力項目を追加する
        <input type="submit" value="登録">
    </form>
</body>

</html>