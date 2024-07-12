<%-- 企業比較ページ --%>

<%-- TODO：企業比較用のテーブルを作成する --%>
<%-- TODO：メイン画面に戻るボタンをつくる --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>企業比較</title>
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>

        <%-- ページタイトルを表示する --%>
        <div class="title">
            <h1>企業比較</h1>
        </div>

        <%-- 企業比較テーブルの表示 --%>
        <div class="comCompareTable">
            // 企業比較用のテーブルを作成
        </div>

	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>