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
        <table>
            <tr>
                <th>企業名</th>
                <th>応募媒体</th>
                <th>選考状況</th>
                <th>日程</th>
                <th>選考フロー</th>
            </tr>
            <%-- TODO: データベースから企業リストを取得し、以下のように表示する --%>
            <%-- <%
                // データベースから企業リストを取得する処理
                List<Company> companyList = getCompanyListFromDatabase();

                // 企業リストを表示する処理
                for (Company company : companyList) {
            %>
            <tr>
                <td><%= company.getCompany_name() %></td>
                <td><%= company.getSelection_application() %></td>
                <td><%= company.getSelection_status() %></td>
                <td><%= company.getSelection_date() %></td>
                <td><%= company.getSelection_flow() %></td>
            </tr>
            <%-- <% } %> --%>
            <%-- TODO: データベースから企業リストを取得し、表示する処理の終了 --%>
        </table>
    </div>


    <%-- 企業単体のページへ遷移するボタン：テーブル内に配置する！！ --%>
    <form action="/Careemanapp10/Company" method="get">
        <input type="submit" value="企業ページへ">
    </form>
</body>

</html>