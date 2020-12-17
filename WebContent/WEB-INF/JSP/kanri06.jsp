<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>応募者確認ページ</title><form method="post" action="./kanri6"><input type="submit" value="更新する" /></form>
</head>
<body>
<h1>管理者画面</h1>
<h2>応募者一覧ページ</h2>
<table border=1>
<tr><td>メールアドレス</td><td>応募件数</td></tr>
<%
	String[] sanka=(String[])request.getAttribute("sanka");
	int[] count=(int[])request.getAttribute("count");
	for(int i=0;i<10;i++){
		if(sanka[i] != null){
%>
<tr><td><%=sanka[i]%></td><td><%=count[i]%>件</td></tr>
<%
		}
	}
%>
</table>
<input  type="button" onclick="location.href='./kanrihome'" value="homeへ" />


</body>
</html>
