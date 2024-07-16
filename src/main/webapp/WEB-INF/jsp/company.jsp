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
        <div class="TitleAndButton">
			<h1 class="blockTitleLeft"><%=requestCompany.getCompany_name()%></h1>
		</div>

		<%-- 企業情報(単体)を表示する --%>
		<div class="subTitleAndButton">
			<h2>企業情報</h2>
			<ul class="siteUrl">
				<li><button class="siteUrlButton" onclick="location.href='<%=requestCompany.getLink_hp()%>'">企業HP</button></li>
				<li><button class="siteUrlButton" onclick="location.href='<%=requestCompany.getLink_review()%>'">口コミ</button></li>
			</ul>
		</div>
		<div class="companyInfoBlock">
			<ul class="companyInfo">
				<li>
					<table class="companyTable1">
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
							<th>タスク内容</th>
							<td><%=requestCompany.getSelection_task()%></td>
						</tr>
						<tr>
							<th>選考フロー</th>
							<td><%=requestCompany.getSelection_flow()%></td>
						</tr>
					</table>
				</li>
				<li>
					<table class="companyTable2">
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
				</li>
			</ul>
		</div>

		<%-- 面接情報を表示する --%>
		<div class="subTitleAndButton">
			<h2>面接情報</h2>
			<%-- 面接情報を登録するボタン --%>
			<p><button class="registerInterviewButton" onclick="location.href='/Careemanapp10/RegisterInterview'">面接登録</button></p>
		</div>
		<div class="companyInfoBlock">
			<% if (requestInterviews != null && requestInterviews.size() > 0) { %>
			<div class="overflowTableBlock">
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
							<th>質問内容</th>
							<td><%=interview.getInterview_content_basic()%></td>
						</tr>
						<tr>
							<th>その他質問</th>
							<td><%=interview.getInterview_content_additional()%></td>
						</tr>
						<tr>
							<th>メモ</th>
							<td><%=interview.getInterview_memo()%></td>
						</tr>
					</table>
				<% } %>
			</div>
			<% } else { %>
				<p>面接情報は未登録です。</p>
			<% } %>
		</div>

		<%-- 企業情報(詳細)を表示する --%>
		<div class="subTitleAndButton">
			<h2>企業詳細</h2>
			<% if (requestCompanyDetail == null) { %>
				<%-- 企業詳細を登録するボタン --%>
				<p><button class="registerDetailButton" onclick="location.href='/Careemanapp10/RegisterCompanyDetail'">詳細登録</button></p>
			<% } %>
		</div>
		<div class="companyInfoBlockLast">
			<% if (requestCompanyDetail != null) { %>
			<div class="detailTable1Block">
				<table class="detailTable1">
					<tr>
						<th>事業内容</th>
						<td><%=requestCompanyDetail.getBusiness_content()%></td>
					</tr>
				</table>
				<table class="detailTable1">
					<tr>
						<th>職務内容</th>
						<td><%=requestCompanyDetail.getJob_description()%></td>
					</tr>
				</table>
			</div>

			<div class="overflowTableBlock">
				<table class="detailTable2">
					<tr>
						<th>勤務地</th>
						<td><%=requestCompanyDetail.getWork_location()%>（リモート:<%= requestCompanyDetail.getRemote_work() %>）</td>
					</tr>
					<tr>
						<th>就業時間</th>
						<td><%= requestCompanyDetail.getWorking_hours() %></td>
					</tr>
					<tr>
						<th>所定労働</th>
						<td><%= requestCompanyDetail.getStandard_working_hours() %>時間</td>
					</tr>
					<tr>
						<th>休憩時間</th>
						<td><%= requestCompanyDetail.getBreak_time() %>分（時間指定:<%= requestCompanyDetail.getBreak_time_rule() %>）</td>
					</tr>
					<tr>
						<th>平均残業</th>
						<td><%= requestCompanyDetail.getAverage_overtime_hours() %>時間/日</td>
					</tr>
				</table>

				<table class="detailTable2">
						<th>年収</th>
						<td><%= requestCompanyDetail.getAnnual_salary_lower() %>万円～<%= requestCompanyDetail.getAnnual_salary_upper() %>万円</td>
					</tr>
					<tr>
						<th>月収</th>
						<td><%= requestCompanyDetail.getMonthly_salary_lower() %>万円～<%= requestCompanyDetail.getMonthly_salary_upper() %>万円</td>
					</tr>
					<tr>
						<th>基本給</th>
						<td><%= requestCompanyDetail.getBasic_salary_lower() %>万円～<%= requestCompanyDetail.getBasic_salary_upper() %>万円</td>
					</tr>
					<tr>
						<th>固定残業</th>
						<td><%= requestCompanyDetail.getFixed_overtime_pay_lower() %>万円～<%= requestCompanyDetail.getFixed_overtime_pay_upper() %>万円（<%= requestCompanyDetail.getFixed_overtime_hours() %>時間）</td>
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
						<th>試用期間</th>
						<td><%= requestCompanyDetail.getProbation_period() %>か月（条件の変更:<%= requestCompanyDetail.getProbation_period_changes() %>）</td>
					</tr>
				</table>

				<table class="detailTable2">
					<tr>
						<th>社会保険</th>
						<td><%= requestCompanyDetail.getSocial_insurance() %></td>
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
						<th>他手当</th>
						<td><%= requestCompanyDetail.getOther_allowances() %></td>
					</tr>
					<tr>
						<th>退職金</th>
						<td><%= requestCompanyDetail.getRetirement_benefits() %></td>
					</tr>
				</table>

				<table class="detailTable2">
					<tr>
						<th>休日形態</th>
						<td><%= requestCompanyDetail.getHoliday_type() %></td>
					</tr>
					<tr>
						<th>年間休日</th>
						<td><%= requestCompanyDetail.getAnnual_holidays() %>日</td>
					</tr>
					<tr>
						<th>有給休暇</th>
						<td><%= requestCompanyDetail.getPaid_holidays() %>日</td>
					</tr>
					<tr>
						<th>休暇</th>
						<td class="preWrap"><%= requestCompanyDetail.getOther_holidays() %></td>
					</tr>
					<tr>
						<th>休暇メモ</th>
						<td><%= requestCompanyDetail.getHoliday_notes() %></td>
					</tr>
					<tr>
				</table>
			<% }else{ %>
				<p>企業詳細情報は未登録です。</p>
			<% } %>
		</div>
	</div>

	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>