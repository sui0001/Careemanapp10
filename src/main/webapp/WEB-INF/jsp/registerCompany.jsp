<%-- 企業情報登録ページ --%>

<%-- TODO： --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>企業登録</title>
</head>

<body>
    <%-- ページタイトルを表示する --%>
    <div class="title">
        <p>企業登録</p>
    </div>

    <%-- 企業情報を登録する --%>
    <form action="/Careemanapp10/CompanyList" method="post">
        <p>企業名：<input type="text" name="company_name" placeholder="株式会社〇〇"></p>
        <p>応募媒体：</p>
        <select name="selection_application">
            <option value="リクナビ">リクナビ</option>
            <option value="リクルートエージェント">リクルートエージェント</option>
            <option value="マイナビ">マイナビ</option>
            <option value="マイナビエージェント">マイナビエージェント</option>
            <option value="エン転職">エン転職</option>
            <option value="エンエージェント">エンエージェント</option>
            <option value="doda">doda</option>
            <option value="dodaエージェント">dodaエージェント</option>
            <option value="ビズリーチ">ビズリーチ</option>
            <option value="Indeed">Indeed</option>
            <option value="Green">Green</option>
            <option value="LinkedIn">LinkedIn</option>
            <option value="Wantedly">Wantedly</option>
            <option value="転職会議">転職会議</option>
            <option value="ミイダス">ミイダス</option>
            <option value="Openwork">Openwork</option>
        </select>
        <p>選考状況：</p>
        <input type="radio" name="selection_status" value="応募" checked> 応募
        <input type="radio" name="selection_status" value="タスク"> タスク
        <input type="radio" name="selection_status" value="日程調整中"> 日程調整中
        <input type="radio" name="selection_status" value="面接予定"> 面接予定
        <input type="radio" name="selection_status" value="最終面接予定"> 最終面接予定
        <input type="radio" name="selection_status" value="結果待ち"> 結果待ち
        <input type="radio" name="selection_status" value="選考終了"> 選考終了
        <p>日程：<input type="text" name="selection_date"  pattern="\d{2}/\d{2}" placeholder="mm/dd"></p>
        <p>選考フロー：<input type="text" name="selection_flow" placeholder="書類選考・1次選考・2次選考・最終選考・内定など"></p>
        <p>HPリンク：<input type="text" name="link_hp" placeholder="リンクを入力してください"></p>
        <p>口コミリンク：<input type="text" name="link_review" placeholder="リンクを入力してください"></p>
        <p>タスク：</p>
        <input type="checkbox" name="selection_task" value="返信"> 返信<br>
        <input type="checkbox" name="selection_task" value="日程調整"> 日程調整<br>
        <input type="checkbox" name="selection_task" value="書類送付"> 書類送付<br>
        <input type="checkbox" name="selection_task" value="テスト受験"> テスト受験<br>
        <input type="checkbox" name="selection_task" value="完了報告 (エージェント)"> 完了報告 (エージェント)<br>
        <input type="checkbox" name="selection_task" value="面接後アンケート (エージェント)"> 面接後アンケート (エージェント)<br>
        <input type="checkbox" name="selection_task" value="その他"> その他<br>
        <p>志望動機：</p>
        <textarea name="selection_motivation" rows="5" cols="60"></textarea>
        <p>良い点：</p>
        <textarea name="positive_points" rows="5" cols="60"></textarea>
        <p>懸念点：</p>
        <textarea name="negative_points" rows="5" cols="60"></textarea>
        <p>確認事項：</p>
        <textarea name="points_to_confirm" rows="5" cols="60"></textarea>
        <p><input type="submit" value="登録"></p>
    </form>
</body>

</html>