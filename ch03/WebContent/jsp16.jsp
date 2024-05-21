<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="./Error/error3.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>ArrayIndexOutOfBoundException</h3>
	<%
		String[] arr = {"관악산","북한산","설악산"};
		out.print(arr[3]);
	%>
</body>
</html>