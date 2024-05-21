<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>날짜출력</h3>
	<%
		Date date = new Date();
		//YYYY,yyyy같다. MM-월 mm-분
		SimpleDateFormat sdf1 = new SimpleDateFormat("YYYY_MM_dd");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy_MM_dd hh:mm:ss");
		
		String simpleDate1 = sdf1.format(date);
		String simpleDate2 = sdf2.format(date);
		
	%>
	오늘의 년월일: <%=simpleDate1 %><br>
	오늘의 년월일시분초: <%=simpleDate2 %>
</body>
</html>