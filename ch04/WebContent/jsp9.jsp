<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 세번째 페이지입니다</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		out.print(name);
		int num1 = 100;
		int num2 = 200;
	%>
	결과값<%=num1+num2 %>
</body>
</html>