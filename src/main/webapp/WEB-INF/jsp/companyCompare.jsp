<%-- 企業比較ページ --%>

<%-- TODO：企業比較用のテーブルを作成する --%>
<%-- TODO：メイン画面に戻るボタンをつくる --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- リクエストスコープから取り出す (必要ファイルのインポート忘れない) --%>
<%@ page import="dto.*" %>
<%@ page import="java.util.List" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% List<CompanyDTO> requestCompanyList =  (List<CompanyDTO>)request.getAttribute("companies"); %>
<% CompanyDetailDTO requestCompanyDetail = (CompanyDetailDTO)request.getAttribute("details"); %>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>企業比較</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>
    <div class="conteiner">
        <%-- ページタイトルを表示する --%>
        <div class="TitleAndButton">
            <h1 class="blockTitleLeft">企業比較</h1>
            <%-- 企業登録画面へ遷移するボタン --%>
            <p><button class="registerCompanyButton" onclick="location.href='/Careemanapp10/RegisterCompany'">企業登録</button></p>
        </div>

        <%-- 企業比較テーブルの表示 --%>
        <div class="comCompareTable">
            <table>

        </div>
    </div>
    
	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>