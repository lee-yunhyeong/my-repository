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
		String name = (String)request.getAttribute("name");
		out.print("<h3>여기는 메인 페이지입니다</h3>");
	%>
	requset속에 name은 존재할까요?<%=name %>
</body>
</html>