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
	String  sShouhin	= (String)request.getAttribute("sShouhin");
	if(sShouhin == null){
%>
<h1>当選しませんでした</h1>
<%} else {%>
<H1>おめでとうございます</H1>
<%= sShouhin %>が当選しました
<%} %>


</body>
</html>