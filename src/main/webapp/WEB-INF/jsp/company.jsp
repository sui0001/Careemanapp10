<%-- 企業ページ --%>

<%-- TODO：companyList.jspに戻るボタンをつくる --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- リクエストスコープから取り出す (必要ファイルのインポート忘れない) --%>
<%@ page import="dto.*" %>
<%@ page import="java.util.List" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% CompanyDTO requestCompany =  (CompanyDTO)request.getAttribute("singleCompany"); %>
<% List<InterviewDTO> requestInterviews = (List<InterviewDTO>)request.getAttribute("interviews"); %>
<% CompanyDetailDTO requestCompanyDetail = (CompanyDetailDTO)request.getAttribute("details"); %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>応募企業</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>
	<div class="conteiner">

		<h1 class="blockTitle"><%=requestCompany.getCompany_name()%></h1>

			<%-- 企業情報(単体)を表示する --%>
			<h2 class="subTitle">企業情報</h2>
				<table class="companyTable">
					<tr>
						<th>応募媒体</th>
						<td><%=requestCompany.getSelection_application()%></td>
					</tr>
					<tr>
						<th>選考状況</th>
						<td><%=requestCompany.getSelection_status()%></td>
					</tr>
					<tr>
						<th>日程</th>
						<td><%=requestCompany.getSelection_date()%></td>
					</tr>
					<tr>
						<th>選考フロー</th>
						<td><%=requestCompany.getSelection_flow()%></td>
					</tr>
					<tr>
						<th>HPリンク</th>
						<td><%=requestCompany.getLink_hp()%></td>
					</tr>
					<tr>
						<th>口コミリンク</th>
						<td><%=requestCompany.getLink_review()%></td>
					</tr>
					<tr>
						<th>タスク内容</th>
						<td><%=requestCompany.getSelection_task()%></td>
					</tr>
					<tr>
						<th>志望動機</th>
						<td><%=requestCompany.getSelection_motivation()%></td>
					</tr>
					<tr>
						<th>良い点</th>
						<td><%=requestCompany.getPositive_points()%></td>
					</tr>
					<tr>
						<th>懸念点</th>
						<td><%=requestCompany.getNegative_points()%></td>
					</tr>
					<tr>
						<th>確認事項</th>
						<td><%=requestCompany.getPoints_to_confirm()%></td>
					</tr>
				</table>

		<hr>

			<%-- 面接情報を表示する --%>
			<h2 class="subTitle">面接情報</h2>
				<% if (requestInterviews != null && requestInterviews.size() > 0) { %>
					<% for (InterviewDTO interview : requestInterviews) { %>
						<table class="interviewTable">
							<tr>
								<th>面接日程</th>
								<td><%=interview.getInterview_date()%></td>
							</tr>
							<tr>
								<th>面接担当者</th>
								<td><%=interview.getInterviewer_name()%></td>
							</tr>
							<tr>
								<th>面接内容基本</th>
								<td><%=interview.getInterview_content_basic()%></td>
							</tr>
							<tr>
								<th>面接内容その他</th>
								<td><%=interview.getInterview_content_additional()%></td>
							</tr>
							<tr>
								<th>メモ</th>
								<td><%=interview.getInterview_memo()%></td>
							</tr>
						</table>
					<% } %>
				<% } else { %>
					<p>面接情報は未登録です。</p>
				<% } %>

			<%-- 面接情報を登録するボタン --%>
			<a href="/Careemanapp10/RegisterInterview" class="registerInterviewButton">面接登録</a>

			<hr>

			<%-- 企業情報(詳細)を表示する --%>
			<h2 class="subTitle">企業詳細</h2>
				<% if (requestCompanyDetail != null) { %>
					<table class="detailTable">
						<tr>
							<th>事業内容</th>
							<td><%=requestCompanyDetail.getBusiness_content()%></td>
						</tr>
						<tr>
							<th>職務内容</th>
							<td><%=requestCompanyDetail.getJob_description()%></td>
						</tr>
						<tr>
							<th>勤務地</th>
							<td><%=requestCompanyDetail.getWork_location()%></td>
						</tr>
						<tr>
							<th>リモートワーク</th>
							<td><%= requestCompanyDetail.getRemote_work() %></td>
						</tr>
						<tr>
							<th>就業時間</th>
							<td><%= requestCompanyDetail.getWorking_hours() %></td>
						</tr>
						<tr>
							<th>所定労働時間</th>
							<td><%= requestCompanyDetail.getStandard_working_hours() %></td>
						</tr>
						<tr>
							<th>休憩時間</th>
							<td><%= requestCompanyDetail.getBreak_time() %></td>
						</tr>
						<tr>
							<th>休憩時間の指定</th>
							<td><%= requestCompanyDetail.getBreak_time_rule() %></td>
						</tr>
						<tr>
							<th>平均残業時間</th>
							<td><%= requestCompanyDetail.getAverage_overtime_hours() %></td>
						</tr>
						<tr>
							<th>年間休日数</th>
							<td><%= requestCompanyDetail.getAnnual_holidays() %></td>
						</tr>
						<tr>
							<th>休日形態</th>
							<td><%= requestCompanyDetail.getHoliday_type() %></td>
						</tr>
						<tr>
							<th>有給休暇</th>
							<td><%= requestCompanyDetail.getPaid_holidays() %></td>
						</tr>
						<tr>
							<th>休暇</th>
							<td><%= requestCompanyDetail.getOther_holidays() %></td>
						</tr>
						<tr>
							<th>休暇メモ</th>
							<td><%= requestCompanyDetail.getHoliday_notes() %></td>
						</tr>
						<tr>
							<th>年収上限</th>
							<td><%= requestCompanyDetail.getAnnual_salary_upper() %></td>
						</tr>
						<tr>
							<th>年収下限</th>
							<td><%= requestCompanyDetail.getAnnual_salary_lower() %></td>
						</tr>
						<tr>
							<th>月収上限</th>
							<td><%= requestCompanyDetail.getMonthly_salary_upper() %></td>
						</tr>
						<tr>
							<th>月収下限</th>
							<td><%= requestCompanyDetail.getMonthly_salary_lower() %></td>
						</tr>
						<tr>
							<th>基本給上限</th>
							<td><%= requestCompanyDetail.getBasic_salary_upper() %></td>
						</tr>
						<tr>
							<th>基本給下限</th>
							<td><%= requestCompanyDetail.getBasic_salary_lower() %></td>
						</tr>
						<tr>
							<th>固定残業代上限</th>
							<td><%= requestCompanyDetail.getFixed_overtime_pay_upper() %></td>
						</tr>
						<tr>
							<th>固定残業代下限</th>
							<td><%= requestCompanyDetail.getFixed_overtime_pay_lower() %></td>
						</tr>
						<tr>
							<th>固定残業時間</th>
							<td><%= requestCompanyDetail.getFixed_overtime_hours() %></td>
						</tr>
						<tr>
							<th>通勤手当</th>
							<td><%= requestCompanyDetail.getCommuting_allowance() %></td>
						</tr>
						<tr>
							<th>住宅手当</th>
							<td><%= requestCompanyDetail.getHousing_allowance() %></td>
						</tr>
						<tr>
							<th>資格補助</th>
							<td><%= requestCompanyDetail.getQualification_support() %></td>
						</tr>
						<tr>
							<th>資格手当</th>
							<td><%= requestCompanyDetail.getQualification_allowance() %></td>
						</tr>
						<tr>
							<th>その他手当</th>
							<td><%= requestCompanyDetail.getOther_allowances() %></td>
						</tr>
						<tr>
							<th>賞与</th>
							<td><%= requestCompanyDetail.getBonus() %></td>
						</tr>
						<tr>
							<th>賞与実績</th>
							<td><%= requestCompanyDetail.getBonus_record() %></td>
						</tr>
						<tr>
							<th>社会保険</th>
							<td><%= requestCompanyDetail.getSocial_insurance() %></td>
						</tr>
						<tr>
							<th>試用期間</th>
							<td><%= requestCompanyDetail.getProbation_period() %></td>
						</tr>
						<tr>
							<th>試用期間中の変更</th>
							<td><%= requestCompanyDetail.getProbation_period_changes() %></td>
						</tr>
						<tr>
							<th>退職金</th>
							<td><%= requestCompanyDetail.getRetirement_benefits() %></td>
						</tr>
					</table>
				<% }else{ %>
					<p>企業詳細情報は未登録です。</p>
					<%-- 企業詳細を登録するボタン --%>
					<a href="/Careemanapp10/RegisterCompanyDetail" class="registerDetailButton">企業詳細登録</a>
				<% } %>
	</div>

	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>