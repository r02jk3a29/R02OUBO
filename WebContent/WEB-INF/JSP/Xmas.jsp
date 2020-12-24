<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>クリスマスセール</title>
</head>
</body>
<body style="background-image:url(file:///Z:/git/R02OUBO/WebContent/WEB-INF/image/santa.png)">
<body style=".resizeimage width:100%;" >

</head>

<%
String re= (String)request.getAttribute("re");
String re2= (String)request.getAttribute("re2");
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
7桁の数字A<input type="number" name="numa" placeholder="7桁の数字A" /><%if(re!=null){%><%=re %><%}%><%if(re2!=null){%><%=re2 %><%}%><br/>
7桁の数字B<input type="number" name="numb" placeholder="7桁の数字B" /><%if(re2!=null){%><%=re2 %><%}%><br/>
<input type="submit" value="登録する" />
</form>
<a href="./Valentine">バレンタインセール</a><a href="./Singakki">新学期セール</a><br />
<input  type="button" onclick="location.href='/Oubo_20201113/WebContent/WEB-INF/JSP/page1.6.jsp'" value="複数入力ページ" /><br />
</body>
</html>