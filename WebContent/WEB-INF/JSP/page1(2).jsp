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
String re= (String)request.getAttribute("re");
String day = (String)request.getAttribute("day");
double day2=Double.parseDouble(day);
day2=-day2;
if(day2<10){
	day2=Math.floor(day2);
	int day3=(int)day2+1;
%>
応募期限まであと<%=day3%>日
<%
}
%>


<form method="get" action="./page2">
応募者のメールアドレス<input type="email" name="email" placeholder="メールアドレスを入力" /><br/>
7桁の数字A<input type="number" name="numa" placeholder="7桁の数字A" /><%if(re!=null){%>数字Aがただしくありません。<%}%><br/>
7桁の数字B<input type="number" name="numb" placeholder="7桁の数字B" /><br/>
<input type="submit" value="登録する" />
</form>
</body>
</html>
