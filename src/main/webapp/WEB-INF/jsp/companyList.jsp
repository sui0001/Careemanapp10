<%-- 企業リストページ：選考状況 --%>

<%-- TODO：メイン画面に戻るボタンをつくる --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- リクエストスコープから取り出す処理 (必要ファイルのインポート忘れない) --%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="dto.*" %>
<%@ page import="java.util.List" %>
<% List<CompanyDTO> requestCompanyList =  (List<CompanyDTO>)request.getAttribute("companies"); %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>選考状況</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>
    <div class="conteiner">

        <h1 class="blockTitle">選考状況</h1>
        
        <%-- 企業登録画面へ遷移するボタン --%>
        <button class="registerCompanyBotton" onclick="location.href='/Careemanapp10/RegisterCompany'">企業登録</button>

            <%-- 企業リストを表示する --%>
            <table class="companyListTable">
                <tr>
                    <th>企業名</th>
                    <th>応募媒体</th>
                    <th>選考状況</th>
                    <th>日程</th>
                    <th>選考フロー</th>
                    <%-- <th>HPリンク</th> --%>
                    <%-- <th>口コミリンク</th> --%>
                    <th>タスク内容</th>
                    <%-- <th>志望動機</th> --%>
                    <%-- <th>良い点</th> --%>
                    <%-- <th>懸念点</th> --%>
                    <th>確認事項</th>
                </tr>

                <% for (CompanyDTO company : requestCompanyList) { %>
                    <tr>
                        <% String url = "/Careemanapp10/Company?company_id=" + company.getCompany_id(); %> <%-- 企業IDを遷移時に使えるようにする --%>
                        <td><a href=<%= url %>><%= company.getCompany_name() %></a></td>
                        <td><%= company.getSelection_application() %></td>
                        <td><%= company.getSelection_status() %></td>
                        <td><%= company.getSelection_date() %></td>
                        <td><%= company.getSelection_flow() %></td>
                        <%-- <td><%= company.getLink_hp() %></td> --%>
                        <%-- <td><%= company.getLink_review() %></td> --%>
                        <td><%= company.getSelection_task() %></td>
                        <%-- <td><%= company.getSelection_motivation() %></td> --%>
                        <%-- <td><%= company.getPositive_points() %></td> --%>
                        <%-- <td><%= company.getNegative_points() %></td> --%>
                        <td><%= company.getPoints_to_confirm() %></td>
                    </tr>
                <% } %>
            </table>
    </div>

	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>