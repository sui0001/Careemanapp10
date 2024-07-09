<%-- 就労条件登録画面 --%>

<%-- TODO：フォームの入力項目を追加する --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>就労条件登録</title>
</head>

<body>
    <%-- ページタイトルを表示 --%>
    <div class="title">
        <p>就労条件登録</p>
    </div>

    <%-- 就労条件を登録する --%>
    <form action="/Careemanapp10/RegisterCompanyDetail" method="post">
        <p>経営状況：</p>
        <textarea name="management_status" rows="4" cols="50"></textarea>
        <p>事業内容：</p>
        <textarea name="business_content" rows="4" cols="50"></textarea>
        <p>職務内容：</p>
        <textarea name="job_description" rows="4" cols="50"></textarea>
        <p>勤務地：<input type="text" name="work_location"></p>
        <p>リモートワーク：<input type="text" name="remote_work"></p>
        <p>就業時間：<input type="text" name="working_hours"></p>
        <p>所定労働時間：<input type="text" name="standard_working_hours"></p>
        <p>休憩時間：<input type="text" name="break_time"></p>
        <p>休憩時間の指定：<input type="text" name="break_time_rule"></p>
        <p>平均残業時間：<input type="text" name="average_overtime_hours"></p>
        <p>年間休日数：<input type="text" name="annual_holidays"></p>
        <p>休日形態：<input type="text" name="holiday_type"></p>
        <p>有給休暇：<input type="text" name="paid_holidays"></p>
        <p>休暇：<input type="text" name="other_holidays"></p>
        <p>休暇メモ：<input type="text" name="holiday_notes"></p>
        <p>年収：<input type="text" name="annual_salary"></p>
        <p>月収：<input type="text" name="monthly_salary"></p>
        <p>基本給：<input type="text" name="basic_salary"></p>
        <p>固定残業代：<input type="text" name="fixed_overtime_pay"></p>
        <p>固定残業時間：<input type="text" name="fixed_overtime_hours"></p>
        <p>通勤手当：<input type="text" name="commuting_allowance"></p>
        <p>住宅手当：<input type="text" name="housing_allowance"></p>
        <p>資格補助：<input type="text" name="qualification_support"></p>
        <p>資格手当：<input type="text" name="qualification_allowance"></p>
        <p>その他手当：<input type="text" name="other_allowances"></p>
        <p>賞与：<input type="text" name="bonus"></p>
        <p>賞与実績：<input type="text" name="bonus_record"></p>
        <p>社会保険：<input type="text" name="social_insurance"></p>
        <p>試用期間：<input type="text" name="probation_period"></p>
        <p>試用期間中の変更：<input type="text" name="probation_period_changes"></p>
        <p>退職金：<input type="text" name="retirement_benefits"></p>
        <p><input type="submit" value="登録"></p>
    </form>
</body>

</html>