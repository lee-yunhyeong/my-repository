<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 두번재 페이지입니다</h3>
	폼에서 넘어온 name : <%=name %><br>
	폼에서 넘어온 age : <%=age %>
	<%
		String e_name = URLEncoder.encode(name,"utf-8");
		response.sendRedirect("jsp12.jsp?name="+e_name+"&age="+age);
	%>
</body>
</html>