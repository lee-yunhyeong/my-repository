<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.Person"%>
<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String tel = "010-1111-2222";
	Person p = new Person(name,age,tel);
	request.setAttribute("person1", p);
	session.setAttribute("person2", p);
	pageContext.forward("jsp13.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 세번째 페이지입니다</h3>
</body>
</html>