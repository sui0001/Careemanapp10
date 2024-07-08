<%-- 就労条件登録画面 --%>

<%-- TODO：フォームの入力項目を追加する --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>就労条件登録</title>
</head>

<body>
    <%-- ページタイトルを表示 --%>
    <div class="title">
        <p>就労条件登録</p>
    </div>

    <%-- 就労条件を登録する --%>
    <form action="/Careemanapp10/RegisterCompanyDetail" method="post">
        // フォームの入力項目を追加する
        <input type="submit" value="登録">
    </form>
</body>

</html>