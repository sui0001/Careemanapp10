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
</head>

<body>
    <%-- ページタイトルを表示する --%>
    <h1>選考状況</h1>

    <%-- 企業登録画面へ遷移するボタン --%>
    <form action="/Careemanapp10/RegisterCompany" method="get">
        <input type="submit" value="企業登録">
    </form>

    <%-- 企業リストを表示する --%>
    <table>
        <tr>
            <th>企業名</th>
            <th>応募媒体</th>
            <th>選考状況</th>
            <th>日程</th>
            <th>選考フロー</th>
            <th>HPリンク</th>
            <th>口コミリンク</th>
            <th>タスク内容</th>
            <th>志望動機</th>
            <th>良い点</th>
            <th>懸念点</th>
            <th>確認事項</th>
        </tr>

        <% for (CompanyDTO company : requestCompanyList) { %>
            <tr>
                <% String url = "/Careemanapp10/Company?company_id=" + company.getCompany_id(); %>
                <td><a href=<%= url %>><%= company.getCompany_name() %></a></td>
                <td><%= company.getSelection_application() %></td>
                <td><%= company.getSelection_status() %></td>
                <td><%= company.getSelection_date() %></td>
                <td><%= company.getSelection_flow() %></td>
                <td><%= company.getLink_hp() %></td>
                <td><%= company.getLink_review() %></td>
                <td><%= company.getSelection_task() %></td>
                <td><%= company.getSelection_motivation() %></td>
                <td><%= company.getPositive_points() %></td>
                <td><%= company.getNegative_points() %></td>
                <td><%= company.getPoints_to_confirm() %></td>
            </tr>
        <% } %>
    </table>

</body>

</html>