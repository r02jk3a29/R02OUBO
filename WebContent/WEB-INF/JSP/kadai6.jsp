<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String email = (String)request.getAttribute("email");
String numa = (String)request.getAttribute("numa");
String numb = (String)request.getAttribute("numb");
%>

<h1>数字A・・・<%= numa %></h1><br/>
<h1>数字B・・・<%= numb %></h1><br/>

<h1>登録しますか?</h1><br/>


<form method="post" action="./page2">
<input type="hidden" name="email" value="値">
<input type="hidden" name="numa" value="値">
<input type="hidden" name="numb" value="値">
<input type="submit" value="登録" />
</form>
</body>
</html>