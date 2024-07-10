<%-- 企業リストページ：選考状況 --%>

<%-- TODO：企業を2社以上表示させる --%>
<%-- TODO：メイン画面に戻るボタンをつくる --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% CompanyDTO requestCompanyList =  (CompanyDTO)request.getAttribute("company"); %>

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
        <table>
            <tr>
            <%-- <th>ユーザーID</th> --%>
            <%-- <th>企業ID</th> --%>
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
            <tr>
            <%-- <td><%= requestCompanyList.getUser_id() %></td> --%>
            <%-- <td><%= requestCompanyList.getCompany_id() %></td> --%>
            <td><a href="/Careemanapp10/Company"><%= requestCompanyList.getCompany_name() %></a></td>
            <td><%= requestCompanyList.getSelection_application() %></td>
            <td><%= requestCompanyList.getSelection_status() %></td>
            <td><%= requestCompanyList.getSelection_date() %></td>
            <td><%= requestCompanyList.getSelection_flow() %></td>
            <td><%= requestCompanyList.getLink_hp() %></td>
            <td><%= requestCompanyList.getLink_review() %></td>
            <td><%= requestCompanyList.getSelection_task() %></td>
            <td><%= requestCompanyList.getSelection_motivation() %></td>
            <td><%= requestCompanyList.getPositive_points() %></td>
            <td><%= requestCompanyList.getNegative_points() %></td>
            <td><%= requestCompanyList.getPoints_to_confirm() %></td>
            </tr>
        </table>
    </div>

</body>

</html>