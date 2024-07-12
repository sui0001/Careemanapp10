<%-- 面接登録画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>面接登録</title>
</head>

<body>
    <%-- ページタイトルを表示 --%>
    <h1>面接登録</h1>

    <%-- 面接内容を登録 --%>
    <form action="/Careemanapp10/RegisterInterview" method="post">
        <table>
            <tr>
                <th>面接日程：</th>
                <td><input type="text" name="interview_date" pattern="\d{2}/\d{2}" placeholder="mm/dd"></td>
            </tr>
            <tr>
                <th>面接担当者：</th>
                <td><input type="text" name="interviewer_name" placeholder="採用担当・部長・役員など"></td>
            </tr>
            <tr>
                <th>面接内容基本：</th>
                <td>
                    <input type="checkbox" name="interview_content_basic" value="自己紹介">自己紹介<br>
                    <input type="checkbox" name="interview_content_basic" value="前職の内容">前職の内容<br>
                    <input type="checkbox" name="interview_content_basic" value="力を入れたこと">力を入れたこと<br>
                    <input type="checkbox" name="interview_content_basic" value="苦労した経験">苦労した経験<br>
                    <input type="checkbox" name="interview_content_basic" value="退職理由">退職理由<br>
                    <input type="checkbox" name="interview_content_basic" value="志望理由 (業界・職種)">志望理由 (業界・職種)<br>
                    <input type="checkbox" name="interview_content_basic" value="志望動機 (企業)">志望動機 (企業)<br>
                </td>
            </tr>
            <tr>
                <th>面接内容その他：</th>
                <td><textarea name="interview_content_additional" rows="6" cols="60"></textarea></td>
            </tr>
            <tr>
                <th>メモ：</th>
                <td><textarea name="interview_memo" rows="4" cols="60"></textarea></td>
            </tr>
        </table>
        <p><input type="submit" value="登録"></p>
    </form>
</body>

</html>