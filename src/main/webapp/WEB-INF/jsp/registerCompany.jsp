<%-- 企業情報登録ページ --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>企業登録</title>
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../Careemanapp10/css/style.css" />
</head>

<body>
	<%-- header --%>
		<%@include file= "headerAfterLogin.jsp" %>

	<%-- contents --%>
    <div class="conteiner">

        <h1 class="blockTitle">企業登録</h1>

        <%-- 企業情報を登録する --%>
        <form class="form" action="/Careemanapp10/CompanyList" method="post">
            <table>
                <tr>
                    <th>企業名</th>
                    <td><input type="text" name="company_name" placeholder="株式会社〇〇"></td>
                </tr>
                <tr>
                    <th>応募媒体</th>
                    <td>
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
                    </td>
                </tr>
                <tr>
                    <th>選考状況</th>
                    <td>
                        <input type="radio" name="selection_status" value="応募" checked> 応募
                        <input type="radio" name="selection_status" value="タスク"> タスク
                        <input type="radio" name="selection_status" value="日程調整中"> 日程調整中
                        <input type="radio" name="selection_status" value="面接予定"> 面接予定
                        <input type="radio" name="selection_status" value="最終面接予定"> 最終面接予定<br>
                        <input type="radio" name="selection_status" value="結果待ち"> 結果待ち
                        <input type="radio" name="selection_status" value="内定"> 内定
                        <input type="radio" name="selection_status" value="内定"> 内々定
                        <input type="radio" name="selection_status" value="内定"> 内定辞退
                        <input type="radio" name="selection_status" value="選考終了"> 選考終了
                    </td>
                </tr>
                <tr>
                    <th>日程</th>
                    <td><input type="date" name="selection_date"></td>
                </tr>
                <tr>
                    <th>選考フロー</th>
                    <td><input type="text" name="selection_flow" placeholder="書類選考・1次選考・2次選考・最終選考・内定など"></td>
                </tr>
                <tr>
                    <th>HPリンク</th>
                    <td><input type="text" name="link_hp" placeholder="リンクを入力してください"></td>
                </tr>
                <tr>
                    <th>口コミリンク</th>
                    <td><input type="text" name="link_review" placeholder="リンクを入力してください"></td>
                </tr>
                <tr>
                    <th>タスク</th>
                    <td>
                        <input type="checkbox" name="selection_tasks" value="返信"> 返信
                        <input type="checkbox" name="selection_tasks" value="日程調整"> 日程調整
                        <input type="checkbox" name="selection_tasks" value="書類送付"> 書類送付
                        <input type="checkbox" name="selection_tasks" value="テスト受験"> テスト受験<br>
                        <input type="checkbox" name="selection_tasks" value="完了報告 (エージェント)"> 完了報告
                        <input type="checkbox" name="selection_tasks" value="面接後アンケート (エージェント)"> 面接後アンケート
                        <input type="checkbox" name="selection_tasks" value="その他"> その他
                    </td>
                </tr>
                <tr>
                    <th>志望動機</th>
                    <td><textarea name="selection_motivation" rows="5" cols="60"></textarea></td>
                </tr>
                <tr>
                    <th>良い点</th>
                    <td><textarea name="positive_points" rows="5" cols="60"></textarea></td>
                </tr>
                <tr>
                    <th>懸念点</th>
                    <td><textarea name="negative_points" rows="5" cols="60"></textarea></td>
                </tr>
                <tr>
                    <th>確認事項</th>
                    <td><textarea name="points_to_confirm" rows="5" cols="60"></textarea></td>
                </tr>
            </table>
            <p class="submitBotton"><input type="submit" value="登録"></p>
        </form>
		
        <button class="cancelBotton" onclick="location.href='/Careemanapp10/CompanyList'">キャンセル</button>

    </div>
    
	<%-- footer --%>
		<%@include file= "footerAfterLogin.jsp" %>
</body>

</html>