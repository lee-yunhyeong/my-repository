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
		String name= request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	<h3>이름: <%=name %> 이고 나이 : <%=age %>살 입니다.</h3>
	<br>
	<hr>
	<%
		request.setAttribute("n", name);
		request.setAttribute("a", age);
	%> 
	EL(표현언어)이름:${n } 이고 EL(표현언어)나이 : ${a }
</body>
</html>