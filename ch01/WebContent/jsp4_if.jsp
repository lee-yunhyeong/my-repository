<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사를 합니다</title>
</head>
<body>
	<div>
	<%
		/* 4~12 Good Morning
		12~18 Good Afternoon
		18~22 Good Evening
		나머지 Good Night */
		Calendar now = Calendar.getInstance();
		int h = now.get(Calendar.HOUR_OF_DAY);
		int m = now.get(Calendar.MINUTE);
		out.print("지금은<span>"+h+"시"+m+"분</span> 입니다.<br>");
		if(h>4 && h<=12){
			out.print("<h3 style='color:yellow'>Good Morning</h3>");
		}
		else if(h>12 && h<=18){
			out.print("<h3 style='color:orange'>Good Afternoon</h3>");
		}
		else if(h>18 && h<=22){
			out.print("<h3 style='color:green'>Good Evening</h3>");
		}
		else{
			out.print("<h3 style='color:blue'>Good Morning</h3>");
		}
	%>
	</div>
	<br>
	<img src="./img/시계.png" width="250px" height="200px">
</body>
</html>