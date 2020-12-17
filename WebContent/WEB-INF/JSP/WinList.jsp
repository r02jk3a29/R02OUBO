<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>当選者一覧表</title>
</head>
<body>
<h1>仙台駅前第一デパート　セール抽選会　当選者一覧</h1>
<%
	List<String[]> list = 
		(List<String[]>)request.getAttribute("sResult");
%>
<table border=1>
<tr>
<th>メールアドレス</th>
</tr>
<% 
	for(String[] s: list){
%>
	<tr>
		<td><%= s[0] %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>