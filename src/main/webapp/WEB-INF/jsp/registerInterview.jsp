<%-- 面接登録画面 --%>

<%-- TODO：面接内容基本の内容をチェックボックスに変更する --%>


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
    <div class="title">
        <p>面接登録</p>
    </div>

    <%-- 面接内容を登録 --%>
    <form action="/Careemanapp10/RegisterInterview" method="post">
        <p>面接日程：<input type="text" name="interview_date"></p>
        <p>面接担当者：<input type="text" name="interviewer_name"></p>
        <p>面接内容基本：<input type="text" name="interview_content_basic"></p>
        <p>面接内容その他：<input type="text" name="interview_content_additional"></p>
        <p>メモ：</p>
        <textarea name="interview_memo" rows="4" cols="40"></textarea>
        <p><input type="submit" value="登録"></p>
    </form>
</body>

</html>