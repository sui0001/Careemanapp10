<%-- 就労条件登録画面 --%>

<%-- TODO：テーブル形式にする --%>


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
    <div class="regiDetail">
        <form action="/Careemanapp10/RegisterCompanyDetail" method="post">
            <p>経営状況：
            <input type="radio" name="management_status" value="良">良
            <input type="radio" name="management_status" value="普">普
            <input type="radio" name="management_status" value="悪">悪
            </p>
            <p>事業内容：</p>
            <textarea name="business_content" rows="4" cols="60"></textarea>
            <p>職務内容：</p>
            <textarea name="job_description" rows="4" cols="60"></textarea>
            <p>勤務地：
                <select name="work_location">
                <option value="全国">全国</option>
                <option value="北海道地方">北海道地方</option>
                <option value="東北地方">東北地方</option>
                <option value="関東地方">関東地方</option>
                <option value="中部 (北陸) 地方">中部 (北陸) 地方</option>
                <option value="中部 (甲信越) 地方">中部 (甲信越) 地方</option>
                <option value="中部 (東海) 地方">中部 (東海) 地方</option>
                <option value="近畿地方">近畿地方</option>
                <option value="中国地方">中国地方</option>
                <option value="四国地方">四国地方</option>
                <option value="九州・沖縄地方">九州・沖縄地方</option>
                <option value="北海道">北海道</option>
                <option value="青森県">青森県</option>
                <option value="岩手県">岩手県</option>
                <option value="宮城県">宮城県</option>
                <option value="秋田県">秋田県</option>
                <option value="山形県">山形県</option>
                <option value="福島県">福島県</option>
                <option value="東京都">東京都</option>
                <option value="神奈川県">神奈川県</option>
                <option value="埼玉県">埼玉県</option>
                <option value="千葉県">千葉県</option>
                <option value="茨城県">茨城県</option>
                <option value="栃木県">栃木県</option>
                <option value="群馬県">群馬県</option>
                <option value="新潟県">新潟県</option>
                <option value="富山県">富山県</option>
                <option value="石川県">石川県</option>
                <option value="福井県">福井県</option>
                <option value="山梨県">山梨県</option>
                <option value="長野県">長野県</option>
                <option value="岐阜県">岐阜県</option>
                <option value="静岡県">静岡県</option>
                <option value="愛知県">愛知県</option>
                <option value="三重県">三重県</option>
                <option value="滋賀県">滋賀県</option>
                <option value="京都府">京都府</option>
                <option value="大阪府">大阪府</option>
                <option value="兵庫県">兵庫県</option>
                <option value="奈良県">奈良県</option>
                <option value="和歌山県">和歌山県</option>
                <option value="鳥取県">鳥取県</option>
                <option value="島根県">島根県</option>
                <option value="岡山県">岡山県</option>
                <option value="広島県">広島県</option>
                <option value="山口県">山口県</option>
                <option value="徳島県">徳島県</option>
                <option value="香川県">香川県</option>
                <option value="愛媛県">愛媛県</option>
                <option value="高知県">高知県</option>
                <option value="福岡県">福岡県</option>
                <option value="佐賀県">佐賀県</option>
                <option value="長崎県">長崎県</option>
                <option value="熊本県">熊本県</option>
                <option value="大分県">大分県</option>
                <option value="宮崎県">宮崎県</option>
                <option value="鹿児島県">鹿児島県</option>
                <option value="沖縄県">沖縄県</option>
                </select>
            </p>
            <p>リモートワーク：
            <input type="radio" name="remote_work" value="有">有
            <input type="radio" name="remote_work" value="一部有">一部有
            <input type="radio" name="remote_work" value="無">無
            </p>
            <p>就業時間：<input type="text" name="working_hours" placeholder="hh:mm-hh:mm"></p>
            <p>所定労働時間：
                <select name="standard_working_hours">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>時間
            </p>
            <p>休憩時間：
                <select name="break_time">
                    <% for (int i = 30; i <= 90; i += 5) { %>
                        <option value="<%= i %>"><%= i %></option>
                    <% } %>
                </select>分間
            </p>
            <p>休憩時間の指定：
            <input type="radio" name="break_time_rule" value="1">有
            <input type="radio" name="break_time_rule" value="0">無
            </p>
            <p>平均残業時間：
                <select name="average_overtime_hours">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>時間 (1日あたり)
            </p>
            <p>年間休日数：<input type="text" name="annual_holidays" placeholder="120">日</p>
            <p>休日形態：
            <input type="radio" name="holiday_type" value="完全週休2日">完全週休2日
            <input type="radio" name="holiday_type" value="週休2日">週休2日
            <input type="radio" name="holiday_type" value="その他">その他
            </p>
            <p>有給休暇日数：<input type="text" name="paid_holidays" placeholder="10">日</p>
            <p>休暇：
            <input type="checkbox" name="other_holidays" value="GW">GW
            <input type="checkbox" name="other_holidays" value="夏季休暇">夏季休暇
            <input type="checkbox" name="other_holidays" value="冬期休暇">冬期休暇
            <input type="checkbox" name="other_holidays" value="年末年始休暇">年末年始休暇
            <input type="checkbox" name="other_holidays" value="慶弔休暇">慶弔休暇
            </p>
            <p>休暇メモ：<input type="text" name="holiday_notes" placeholder="その他休暇があれば記入してください"></p>
            <p>年収：<input type="text" name="annual_salary_lower">万円～
                    <input type="text" name="annual_salary_upper"></p>
            <p>月収：<input type="text" name="monthly_salary_lower">万円～
                <input type="text" name="monthly_salary_upper">万円</p>
            <p>基本給：<input type="text" name="basic_salary_lower">万円～
                <input type="text" name="basic_salary_upper">万円</p>
            <p>固定残業代：<input type="text" name="fixed_overtime_pay_lower">万円～
                <input type="text" name="fixed_overtime_pay_upper">万円</p>
            <p>固定残業時間：
                <select name="fixed_overtime_hours">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>時間 (1日当たり)
            </p>
            <p>通勤手当：
            <input type="radio" name="commuting_allowance" value="1">有
            <input type="radio" name="commuting_allowance" value="0">無
            </p>
            <p>住宅手当：
            <input type="radio" name="housing_allowance" value="1">有
            <input type="radio" name="housing_allowance" value="0">無
            </p>
            <p>資格補助：
            <input type="radio" name="qualification_support" value="1">有
            <input type="radio" name="qualification_support" value="0">無
            </p>
            <p>資格手当：
            <input type="radio" name="qualification_allowance" value="1">有
            <input type="radio" name="qualification_allowance" value="0">無
            </p>
            <p>その他手当：
            <input type="radio" name="other_allowances" value="1">有
            <input type="radio" name="other_allowances" value="0">無
            </p>
            <p>賞与：
            <input type="radio" name="bonus" value="1">有
            <input type="radio" name="bonus" value="0">無
            </p>
            <p>賞与実績：<input type="text" name="bonus_record" placeholder="2か月分(2022年度実績)/300,000円(2023年度実績)など"></p>
            <p>社会保険：
            <input type="radio" name="social_insurance" value="完備">完備
            <input type="radio" name="social_insurance" value="一部有">一部有
            <input type="radio" name="social_insurance" value="無">無
            </p>
            <p>試用期間：
                <select name="probation_period">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                </select>か月
            </p>
            <p>試用期間中の変更：
            <input type="radio" name="probation_period_changes" value="1">有
            <input type="radio" name="probation_period_changes" value="0">無
            </p>
            <p>退職金：
            <input type="radio" name="retirement_benefits" value="1">有
            <input type="radio" name="retirement_benefits" value="0">無
            </p>
            <p><input type="submit" value="登録"></p>
        </form>
    </div>
</body>

</html>