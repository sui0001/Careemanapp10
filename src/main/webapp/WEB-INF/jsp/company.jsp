<%-- 企業ページ --%>

<%-- TODO：企業のテーブルを作成する --%>
<%-- TODO：選択した企業の情報のみを表示するようにする --%>
<%-- TODO：companyList.jspに戻るボタンをつくる --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.*" %>
<%@ page import="java.util.List" %>

<% request.setCharacterEncoding("UTF-8"); %>
<% CompanyDTO requestCompany =  (CompanyDTO)request.getAttribute("singleCompany"); %>
<% List<InterviewDTO> requestInterviews = (List<InterviewDTO>)request.getAttribute("interviews"); %>
<% CompanyDetailDTO requestCompanyDetail = (CompanyDetailDTO)request.getAttribute("companyDetails"); %>

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
        <%-- <%= requestCompany.getCompany_id() %> --%>
        <table>
            <tr>
            <th>企業名</th>
            <td><%= requestCompany.getCompany_name() %></td>
            </tr>
            <tr>
            <th>応募媒体</th>
            <td><%= requestCompany.getSelection_application() %></td>
            </tr>
            <tr>
            <th>選考状況</th>
            <td><%= requestCompany.getSelection_status() %></td>
            </tr>
            <tr>
            <th>日程</th>
            <td><%= requestCompany.getSelection_date() %></td>
            </tr>
            <tr>
            <th>選考フロー</th>
            <td><%= requestCompany.getSelection_flow() %></td>
            </tr>
            <tr>
            <th>HPリンク</th>
            <td><%= requestCompany.getLink_hp() %></td>
            </tr>
            <tr>
            <th>口コミリンク</th>
            <td><%= requestCompany.getLink_review() %></td>
            </tr>
            <tr>
            <th>タスク内容</th>
            <td><%= requestCompany.getSelection_task() %></td>
            </tr>
            <tr>
            <th>志望動機</th>
            <td><%= requestCompany.getSelection_motivation() %></td>
            </tr>
            <tr>
            <th>良い点</th>
            <td><%= requestCompany.getPositive_points() %></td>
            </tr>
            <tr>
            <th>懸念点</th>
            <td><%= requestCompany.getNegative_points() %></td>
            </tr>
            <tr>
            <th>確認事項</th>
            <td><%= requestCompany.getPoints_to_confirm() %></td>
            </tr>
        </table>
    </div>



    <%-- 面接情報を表示する --%>
    <div class="intTable">
        <table>
            <tr>
                <% for (InterviewDTO interview : requestInterviews) { %>
                    <table>
                        <tr>
                        <th>面接日程</th>
                        <td><%= interview.getInterview_date() %></td>
                        </tr>
                        <tr>
                        <th>面接担当者</th>
                        <td><%= interview.getInterviewer_name() %></td>
                        </tr>
                        <tr>
                        <th>面接内容基本</th>
                        <td><%= interview.getInterview_content_basic() %></td>
                        </tr>
                        <tr>
                        <th>面接内容その他</th>
                        <td><%= interview.getInterview_content_additional() %></td>
                        </tr>
                        <tr>
                        <th>メモ</th>
                        <td><%= interview.getInterview_memo() %></td>
                        </tr>
                    </table>
                <% } %>
            </tr>
    </div>

    <%-- 面接情報を登録するボタン --%>
    <div class="regiIntButton">
        <form action="/Careemanapp10/RegisterInterview" method="get">
            <input type="submit" value="面接登録">
        </form>


    <%-- 企業詳細を登録するボタン --%>
    <div class="regiComDetailButton">
        <form action="/Careemanapp10/RegisterCompanyDetail" method="get">
            <input type="submit" value="企業詳細登録">
        </form>

    <%-- 企業情報(詳細)を表示する --%>
    <div class="comDetailTable">
        // table
    </div>
</body>

</html>