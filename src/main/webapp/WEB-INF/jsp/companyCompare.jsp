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
		<div class="companyInfoBlock">
            <% if(requestCompanyDetailList == null || requestCompanyDetailList.size() == 0) { %>
                <p>登録されている企業はありません。</p>
            <% }else{ %>
            <div class="overflowTableBlock">
                <% for (CompanyCompare detail : requestCompanyDetailList) { %>
                    <table class="comCompareTable">
                        <tr>
                            <th>企業名</th>
                            <td><%= detail.getCompany_name() %></td>
                        </tr>
                        <tr>
                            <th>応募媒体</th>
                            <td><%= detail.getSelection_application() %></td>
                        </tr>
                        <tr>
                            <th>選考状況</th>
                            <td><%= detail.getSelection_status() %></td>
                        </tr>
                        <tr>
                            <th>選考フロー</th>
                            <td><%= detail.getSelection_flow() %></td>
                        </tr>
                        <tr>
                            <th>経営状況</th>
                            <td><%= detail.getManagement_status() %></td>
                        </tr>
                        <tr>
                            <th>事業内容</th>
                            <td><%= detail.getBusiness_content() %></td>
                        </tr>
                        <tr>
                            <th>職務内容</th>
                            <td><%= detail.getJob_description() %></td>
                        </tr>

                        <tr>
                            <th>勤務地</th>
                            <td><%= detail.getWork_location() %>（リモート:<%= detail.getRemote_work() %>）</td>
                        </tr>
                        <%-- <tr>
                            <th>リモートワーク</th>
                            <td><%= detail.getRemote_work() %></td>
                        </tr> --%>
                        <tr>
                            <th>就業時間</th>
                            <td><%= detail.getWorking_hours() %>（労働:<%= detail.getStandard_working_hours() %>時間，休憩:<%= detail.getBreak_time() %>分/時間指定:<%= detail.getBreak_time_rule() %>）</td>
                        </tr>
                        <%-- <tr>
                            <th>所定労働</th>
                            <td><%= detail.getStandard_working_hours() %>時間</td>
                        </tr> --%>
                        <%-- <tr>
                            <th>休憩時間</th>
                            <td><%= detail.getBreak_time() %>分</td>
                        </tr> --%>
                        <%-- <tr>
                            <th>休憩時間の指定</th>
                            <td><%= detail.getBreak_time_rule() %></td>
                        </tr> --%>
                        <tr>
                            <th>平均残業</th>
                            <td><%= detail.getAverage_overtime_hours() %>時間/日</td>
                        </tr>

                        <tr>
                            <th>休日</th>
                            <td><%= detail.getHoliday_type() %>，年間<%= detail.getAnnual_holidays() %>日，有給<%= detail.getPaid_holidays() %>日</td>
                        </tr>
                        <%-- <tr>
                            <th>休日形態</th>
                            <td><%= detail.getHoliday_type() %></td>
                        </tr> --%>
                        <%-- <tr>
                            <th>有給休暇</th>
                            <td><%= detail.getPaid_holidays() %>日</td>
                        </tr> --%>
                        <tr>
                            <th>休暇</th>
                            <td><%= detail.getOther_holidays() %></td>
                        </tr>
                        <tr>
                            <th>休暇メモ</th>
                            <td><%= detail.getHoliday_notes() %></td>
                        </tr>

                        <tr>
                            <th>年収</th>
                            <td><%= detail.getAnnual_salary_lower() %>万円～<%= detail.getAnnual_salary_upper() %>万円</td>
                        </tr>
                        <tr>
                            <th>月収</th>
                            <td><%= detail.getMonthly_salary_lower() %>万円～<%= detail.getMonthly_salary_upper() %>万円</td>
                        </tr>
                        <tr>
                            <th>基本給</th>
                            <td><%= detail.getBasic_salary_lower() %>万円～<%= detail.getBasic_salary_upper() %>万円</td>
                        </tr>
                        <tr>
                            <th>固定残業</th>
                            <td><%= detail.getFixed_overtime_pay_lower() %>万円～<%= detail.getFixed_overtime_pay_upper() %>万円（固定残業時間:<%= detail.getFixed_overtime_hours() %>時間）</td>
                        </tr>
                        <%-- <tr>
                            <th>固定残業時間</th>
                            <td><%= detail.getFixed_overtime_hours() %>時間</td>
                        </tr> --%>
                        <tr>
                            <th>賞与</th>
                            <td><%= detail.getBonus() %>（実績:<%= detail.getBonus_record() %>）</td>
                        </tr>
                        <%-- <tr>
                            <th>賞与実績</th>
                            <td><%= detail.getBonus_record() %></td>
                        </tr> --%>
                        <tr>
                            <th>試用期間</th>
                            <td><%= detail.getProbation_period() %>か月（条件の変更:<%= detail.getProbation_period_changes() %>）</td>
                        </tr>
                        <%-- <tr>
                            <th>試用期間中の変更</th>
                            <td><%= detail.getProbation_period_changes() %></td>
                        </tr> --%>

                        <tr>
                            <th>社会保険</th>
                            <td><%= detail.getSocial_insurance() %></td>
                        </tr>
                        <tr>
                            <th>通勤手当</th>
                            <td><%= detail.getCommuting_allowance() %></td>
                        </tr>
                        <tr>
                            <th>住宅手当</th>
                            <td><%= detail.getHousing_allowance() %></td>
                        </tr>
                        <tr>
                            <th>資格補助</th>
                            <td><%= detail.getQualification_support() %></td>
                        </tr>
                        <tr>
                            <th>資格手当</th>
                            <td><%= detail.getQualification_allowance() %></td>
                        </tr>
                        <tr>
                            <th>その他手当</th>
                            <td><%= detail.getOther_allowances() %></td>
                        </tr>
                        <tr>
                            <th>退職金</th>
                            <td><%= detail.getRetirement_benefits() %></td>
                        </tr>
                    </table>
                <% } %>
            </div>
        </div>
            <% } %>
    </div>
    
	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>