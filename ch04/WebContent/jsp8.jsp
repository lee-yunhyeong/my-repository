<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>두번재 페이지입니다.</h3>
	<hr>
	<%
		pageContext.include("jsp9.jsp");
	%>
</body>
</html>