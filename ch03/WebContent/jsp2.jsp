<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>forward로 이동해온 페이지입니다.</h3>
	<%
		//String name= request.getParameter("name");
		String name= (String)request.getAttribute("name");
		String name2 = (String)session.getAttribute("name2");
		String name3 = (String)application.getAttribute("name3");
		pageContext.getOut().print(name+"<br>");
		out.print(name2+"<br>");
		out.print(name3);
	%>
	<%
		String name4 = application.getInitParameter("name");
		String age = application.getInitParameter("age");
		String gender = application.getInitParameter("gender");
		String sports = application.getInitParameter("sports");
	%>
	이름: <%=name4 %><br>
	나이: <%=age %><br>
	성별: <%=gender %><br>
	운동: <%=sports %><br>
	
</body>
</html>