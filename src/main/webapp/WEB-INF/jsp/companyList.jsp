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
    <%-- ページタイトルを表示する --%>
    <div class="title">
        <p>応募企業リスト</p>
    </div>

    <%-- 企業登録画面へ遷移するボタン --%>
    <div class="regiComButton">
        <form action="/Careemanapp10/RegisterCompany" method="get">
            <input type="submit" value="企業登録">
        </form>
    </div>

    <%-- 企業リストを表示する --%>
    <div class="comListTable">
        // 企業リストのテーブルを作成する
    </div>


    <%-- 企業単体のページへ遷移するボタン：テーブル内に配置する！！ --%>
    <form action="/Careemanapp10/Company" method="get">
        <input type="submit" value="企業ページへ">
    </form>
</body>

</html>