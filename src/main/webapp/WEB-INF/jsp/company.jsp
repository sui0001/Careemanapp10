<%-- 企業ページ --%>

<%-- TODO：企業のテーブルを作成する --%>
<%-- TODO：選択した企業の情報のみを表示するようにする --%>
<%-- TODO：companyList.jspに戻るボタンをつくる --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>応募企業</title>
</head>

<body>
    <%-- ページタイトルを表示する --%>
    <div class="title">
        <p>応募企業</p>
    </div>

    <%-- 企業情報(単体)を表示する --%>
    <div class="comTable">
        // 企業情報のテーブルを作成する
    </div>

    <%-- 面接の登録画面に遷移するボタン --%>
    <form action="/Careemanapp10/RegisterInterview" method="get">
        <input type="submit" value="面接登録">
    </form>
    
    <%-- 就労条件詳細の登録画面に遷移するボタン --%>
    <form action="/Careemanapp10/RegisterCompanyDetail" method="get">
        <input type="submit" value="就労条件登録">
    </form>
</body>

</html>