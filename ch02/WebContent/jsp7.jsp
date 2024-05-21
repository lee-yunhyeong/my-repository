<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>헤더정보 읽어오기</h3>
	<%
		String name= response.getHeader("name");
		response.setHeader("age","40");
		String age = response.getHeader("age");
	%>
	받은이름 : <%=name %><br>
	받은나이 : <%=age %>
</body>
</html>