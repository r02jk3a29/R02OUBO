<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>期限日変更ページ</title>
</head>
<body>
<h1>管理者画面</h1>
<h2>期限日変更</h2>
<form method="post" action="./kanri2">
20<input type="number" name="year" style="width:50px; placeholder="年を入力してください" />年
<input type="number" name="month" style="width:50px; placeholder="月を入力してください" />月
<input type="number" name="day" style="width:50px; placeholder="日付を入力してください" />日<br />
<input type="submit" value="登録する" />
</form>
<br />
<input  type="button" onclick="location.href='./kanrihome'" value="homeへ" />


</body>
</html>