<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인한 사람의 정보를 출력한다.</h3>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	%>
	아이디 : <%=id %><br>
	비밀번호 : <%=pwd %><br>
	<%
		pageContext.include("image.jsp");
	%>
</body>
</html>