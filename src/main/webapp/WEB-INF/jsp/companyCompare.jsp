<%-- 企業比較ページ --%>

<%-- TODO：企業比較用のテーブルを作成する --%>
<%-- TODO：メイン画面に戻るボタンをつくる --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- リクエストスコープから取り出す (必要ファイルのインポート忘れない) --%>
<%@ page import="dto.*" %>
<%@ page import="domain.*" %>
<%@ page import="java.util.List" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% List<CompanyCompare> requestCompanyDetailList = (List<CompanyCompare>)request.getAttribute("details"); %>


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
                <tr>
                    <th>企業名</th>
                    <th>応募媒体</th>
                    <th>選考状況</th>
                    <%-- <th>日程</th> --%>
                    <%-- <th>タスク内容</th> --%>
                    <th>選考フロー</th>
                    <%-- <th>確認事項</th> --%>
                    <th>経営状況</th>
                    <th>事業内容</th>
                    <th>職務内容</th>
                    <th>勤務地</th>
                    <th>リモートワーク</th>
                    <th>就業時間</th>
                    <th>所定労働時間</th>
                    <th>休憩時間</th>
                    <th>休憩時間の指定</th>
                    <th>平均残業時間</th>
                    <th>年間休日数</th>
                    <th>休日形態</th>
                    <th>有給休暇</th>
                    <th>休暇</th>
                    <th>休暇メモ</th>
                    <th>年収上限</th>
                    <th>年収下限</th>
                    <th>月収上限</th>
                    <th>月収下限</th>
                    <th>基本給上限</th>
                    <th>基本給下限</th>
                    <th>固定残業代上限</th>
                    <th>固定残業代下限</th>
                    <th>固定残業時間</th>
                    <th>通勤手当</th>
                    <th>住宅手当</th>
                    <th>資格補助</th>
                    <th>資格手当</th>
                    <th>その他手当</th>
                    <th>賞与</th>
                    <th>賞与実績</th>
                    <th>社会保険</th>
                    <th>試用期間</th>
                    <th>試用期間中の変更</th>
                    <th>退職金</th>
                </tr>
                <tr>
                    <% if(requestCompanyDetailList == null || requestCompanyDetailList.size() == 0) { %>
                            <p>登録されている企業はありません。</p>
                    <% }else{ %>
                        <% for (CompanyCompare detail : requestCompanyDetailList) { %>
                            <td><%= detail.getCompany_name() %></td>
                            <td><%= detail.getSelection_application() %></td>
                            <td><%= detail.getSelection_status() %></td>
                            <%-- <td><%= detail.getSelection_date() %></td> --%>
                            <%-- <td><%= detail.getSelection_task() %></td> --%>
                            <td><%= detail.getSelection_flow() %></td>
                            <%-- <td><%= detail.getPoints_to_confirm() %></td> --%>
                            <td><%= detail.getManagement_status() %></td>
                            <td><%= detail.getBusiness_content() %></td>
                            <td><%= detail.getJob_description() %></td>
                            <td><%= detail.getWork_location() %></td>
                            <td><%= detail.getRemote_work() %></td>
                            <td><%= detail.getWorking_hours() %></td>
                            <td><%= detail.getStandard_working_hours() %></td>
                            <td><%= detail.getBreak_time() %></td>
                            <td><%= detail.getBreak_time_rule() %></td>
                            <td><%= detail.getAverage_overtime_hours() %></td>
                            <td><%= detail.getAnnual_holidays() %></td>
                            <td><%= detail.getHoliday_type() %></td>
                            <td><%= detail.getPaid_holidays() %></td>
                            <td><%= detail.getOther_holidays() %></td>
                            <td><%= detail.getHoliday_notes() %></td>
                            <td><%= detail.getAnnual_salary_upper() %></td>
                            <td><%= detail.getAnnual_salary_lower() %></td>
                            <td><%= detail.getMonthly_salary_upper() %></td>
                            <td><%= detail.getMonthly_salary_lower() %></td>
                            <td><%= detail.getBasic_salary_upper() %></td>
                            <td><%= detail.getBasic_salary_lower() %></td>
                            <td><%= detail.getFixed_overtime_pay_upper() %></td>
                            <td><%= detail.getFixed_overtime_pay_lower() %></td>
                            <td><%= detail.getFixed_overtime_hours() %></td>
                            <td><%= detail.getCommuting_allowance() %></td>
                            <td><%= detail.getHousing_allowance() %></td>
                            <td><%= detail.getQualification_support() %></td>
                            <td><%= detail.getQualification_allowance() %></td>
                            <td><%= detail.getOther_allowances() %></td>
                            <td><%= detail.getBonus() %></td>
                            <td><%= detail.getBonus_record() %></td>
                            <td><%= detail.getSocial_insurance() %></td>
                            <td><%= detail.getProbation_period() %></td>
                            <td><%= detail.getProbation_period_changes() %></td>
                            <td><%= detail.getRetirement_benefits() %></td>
                        <% } %>
                    <% } %>
                    </tr>
            </table>

        </div>
    </div>
    
	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>