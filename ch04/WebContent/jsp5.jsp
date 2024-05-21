<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="jsp6.jsp" %>
	<%
		int sum = num1 + num2;
	out.print("<h3>"+num1+"+"+num2+"="+sum+"</h3>");
	%>
</body>
</html>