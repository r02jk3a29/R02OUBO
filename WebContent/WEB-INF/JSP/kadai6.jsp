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
String email = (String)request.getAttribute("sEname");
String numa = (String)request.getAttribute("sNumA");
String numb = (String)request.getAttribute("sNumB");
%>

<h1>数字A・・・<%= numa %></h1><br/>
<h1>数字B・・・<%= numb %></h1><br/>

<h1>登録しますか?</h1><br/>


<form method="post" action="./kadai6">
<input type="hidden" name="email" value=<%= email %>>
<input type="hidden" name="numa" value=<%= numa %>>
<input type="hidden" name="numb" value=<%= numb %>>
<input type="submit" value="登録" />
</form>
</body>
</html>