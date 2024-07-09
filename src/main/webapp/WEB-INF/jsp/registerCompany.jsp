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
        <p>企業名：<input type="text" name="company_name"></p>
        <p>応募媒体：<input type="text" name="selection_application"></p>
        <p>選考状況：<input type="text" name="selection_status"></p>
        <p>日程：<input type="text" name="selection_date"></p>
        <p>選考フロー：<input type="text" name="selection_flow"></p>
        <p>HPリンク：<input type="text" name="link_hp"></p>
        <p>口コミリンク：<input type="text" name="link_review"></p>
        <p>タスク内容：<input type="text" name="selection_task"></p>
        <p>志望動機：<input type="text" name="selection_motivation"></p>
        <p>良い点：</p>
        <textarea name="positive_points"></textarea>
        <p>懸念点：</p>
        <textarea name="negative_points"></textarea>
        <p>確認事項：</p>
        <textarea name="points_to_confirm"></textarea>
        <p><input type="submit" value="登録"></p>
    </form>
</body>

</html>