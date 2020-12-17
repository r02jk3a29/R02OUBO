<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>当選番号追加ページ</title>
</head>
<body>
<h1>管理者画面</h1>
<h2>当選番号追加</h2>
<form method="get" action="./kanri4">
数字A<input type="number" name="numa"  placeholder="番号Aを入力してください" /><br />
数字B<input type="number" name="numb"  placeholder="番号Bを入力してください" /><br />
商品<input type="number" name="numc" style="width:50px; placeholder="数字" />等
<input type="text" name="syouhinn"  placeholder="商品名を入力してください" /><br />
<input type="submit" value="登録する" />
</form>
<br />
<input  type="button" onclick="location.href='./kanrihome'" value="homeへ" />


</body>
</html>