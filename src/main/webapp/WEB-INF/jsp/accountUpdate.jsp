<%-- ユーザー情報更新画面 --%>

<%-- TODO：フォームの入力項目を追加する --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ユーザー情報更新</title>
</head>

<body>
    <%-- ページタイトルを表示 --%>
    <div class="title">
        <p>ユーザー情報更新</p>
    </div>

    <%-- ユーザー情報を更新 --%>
    <form action="/Careemanapp10/AccountInformation" method="post">
        <table>
            <tr>
                <td>ユーザーネーム</td>
                <td><input type="text" name="name" placeholder="にゃんたろ"></td>
            </tr>
            <tr>
                <td>年齢</td>
                <td><input type="number" name="age" placeholder="数字を入力"></td>
            </tr>
            <tr>
                <td>メールアドレス</td>
                <td><input type="email" name="mail" placeholder="nekoneko29q@gmail.com"></td>
            </tr>
            <tr>
                <td>パスワード</td>
                <td><input type="password" name="pass" placeholder="パスワードを入力"></td>
            </tr>
            <tr>
                <td>目標</td>
                <td><input type="text" name="goal" placeholder="目標を入力"></td>
            </tr>
            <tr>
                <td>履歴書</td>
                <td><input type="text" name="link_resume" placeholder="履歴書のリンクを入力"></td>
            </tr>
            <tr>
                <td>職務経歴書</td>
                <td><input type="text" name="link_work_history" placeholder="職務経歴書のリンクを入力"></td>
            </tr>
        </table>
        <input type="submit" value="更新">
    </form>
</body>

</html>