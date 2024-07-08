<%-- 企業リストページ：選考状況 --%>

<%-- TODO：企業リストのテーブルを作成する --%>
<%-- TODO：メイン画面に戻るボタンをつくる --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>選考状況</title>
</head>
<body>
    <h1>応募企業リスト</h1>
    <%-- 企業登録画面へ遷移するボタン --%>
    <form action="/Careemanapp10/RegisterCompany" method="get">
        <input type="submit" value="企業登録">
    </form>

    <%-- 企業リストを表示する --%>
    // 企業リストのテーブルを作成する

    <%-- 企業単体のページへ遷移するボタン --%>
    <form action="/Careemanapp10/Company" method="get">
        <input type="submit" value="企業ページへ">
    </form>
</body>
</html>