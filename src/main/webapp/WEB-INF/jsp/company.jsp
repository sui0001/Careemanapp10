<%-- 企業ページ --%>

<%-- TODO：企業のテーブルを作成する --%>
<%-- TODO：選択した企業の情報のみを表示するようにする --%>
<%-- TODO：companyList.jspに戻るボタンをつくる --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <table>
            <tr>
                <td>企業名</td>
                <td>${company_name}</td>
            </tr>
            <tr>
                <td>応募媒体</td>
                <td>${selection_application}</td>
            </tr>
            <tr>
                <td>選考状況</td>
                <td>${selection_status}</td>
            </tr>
            <tr>
                <td>日程</td>
                <td>${selection_date}</td>
            </tr>
            <tr>
                <td>選考フロー</td>
                <td>${selection_flow}</td>
            </tr>
            <tr>
                <td>HPリンク</td>
                <td>${link_hp}</td>
            </tr>
            <tr>
                <td>口コミリンク</td>
                <td>${link_review}</td>
            </tr>
            <tr>
                <td>タスク内容</td>
                <td>${selection_task}</td>
            </tr>
            <tr>
                <td>志望動機</td>
                <td>${selection_motivation}</td>
            </tr>
            <tr>
                <td>良い点</td>
                <td>${positive_points}</td>
            </tr>
            <tr>
                <td>懸念点</td>
                <td>${negative_points}</td>
            </tr>
            <tr>
                <td>確認事項</td>
                <td>${points_to_confirm}</td>
            </tr>
        </table>
    </div>
    <br>


    <%-- 面接内容を表示するテーブル --%>
    <div class="intervTable">
        <table>
            <tr>
                <td>面接日程</td>
                <td>${interview_date}</td>
            </tr>
            <tr>
                <td>面接担当者</td>
                <td>${interviewer_name}</td>
            </tr>
            <tr>
                <td>面接内容基本</td>
                <td>${interview_content_basic}</td>
            </tr>
            <tr>
                <td>面接内容その他</td>
                <td>${interview_content_additional}</td>
            </tr>
            <tr>
                <td>メモ</td>
                <td>${interview_memo}</td>
            </tr>
        </table>
    </div>
    <%-- 面接の登録画面に遷移するボタン --%>
    <form action="/Careemanapp10/RegisterInterview" method="get">
        <input type="submit" value="面接登録">
    </form>
    <br>


    <%-- 就労条件詳細の登録画面に遷移するボタン --%>
    <form action="/Careemanapp10/RegisterCompanyDetail" method="get">
        <input type="submit" value="就労条件登録">
    </form>
    <%-- 就労条件を表示するテーブル --%>
    <div class="conDitTable">
        <table>
            <tr>
                <td>経営状況</td>
                <td>${management_status}</td>
            </tr>
            <tr>
                <td>事業内容</td>
                <td>${business_content}</td>
            </tr>
            <tr>
                <td>職務内容</td>
                <td>${job_description}</td>
            </tr>
            <tr>
                <td>リモートワーク</td>
                <td>${remote_work}</td>
            </tr>
            <tr>
                <td>就業時間</td>
                <td>${working_hours}</td>
            </tr>
            <tr>
                <td>所定労働時間</td>
                <td>${standard_working_hours}</td>
            </tr>
            <tr>
                <td>休憩時間</td>
                <td>${break_time}</td>
            </tr>
            <tr>
                <td>休憩時間の指定</td>
                <td>${break_time_rule}</td>
            </tr>
            <tr>
                <td>平均残業時間</td>
                <td>${average_overtime_hours}</td>
            </tr>
            <tr>
                <td>年間休日数</td>
                <td>${annual_holidays}</td>
            </tr>
            <tr>
                <td>休日形態</td>
                <td>${holiday_type}</td>
            </tr>
            <tr>
                <td>有給休暇</td>
                <td>${paid_holidays}</td>
            </tr>
            <tr>
                <td>休暇</td>
                <td>${other_holidays}</td>
            </tr>
            <tr>
                <td>休暇メモ</td>
                <td>${holiday_notes}</td>
            </tr>
            <tr>
                <td>年収</td>
                <td>${annual_salary}</td>
            </tr>
            <tr>
                <td>月収</td>
                <td>${monthly_salary}</td>
            </tr>
            <tr>
                <td>基本給</td>
                <td>${basic_salary}</td>
            </tr>
            <tr>
                <td>固定残業代</td>
                <td>${fixed_overtime_pay}</td>
            </tr>
            <tr>
                <td>固定残業時間</td>
                <td>${fixed_overtime_hours}</td>
            </tr>
            <tr>
                <td>通勤手当</td>
                <td>${commuting_allowance}</td>
            </tr>
            <tr>
                <td>住宅手当</td>
                <td>${housing_allowance}</td>
            </tr>
            <tr>
                <td>資格補助</td>
                <td>${qualification_support}</td>
            </tr>
            <tr>
                <td>資格手当</td>
                <td>${qualification_allowance}</td>
            </tr>
            <tr>
                <td>その他手当</td>
                <td>${other_allowances}</td>
            </tr>
            <tr>
                <td>賞与</td>
                <td>${bonus}</td>
            </tr>
            <tr>
                <td>賞与実績</td>
                <td>${bonus_record}</td>
            </tr>
            <tr>
                <td>社会保険</td>
                <td>${social_insurance}</td>
            </tr>
            <tr>
                <td>試用期間</td>
                <td>${probation_period}</td>
            </tr>
            <tr>
                <td>試用期間中の変更</td>
                <td>${probation_period_changes}</td>
            </tr>
            <tr>
                <td>退職金</td>
                <td>${retirement_benefits}</td>
            </tr>
        </table>
    </div>
    </div>
</body>

</html>