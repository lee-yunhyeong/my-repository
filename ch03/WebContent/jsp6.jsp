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
	<%
		String name = application.getInitParameter("name");
		String age = application.getInitParameter("age");
		String gender = application.getInitParameter("gender");
		String sports = application.getInitParameter("sports");
	%>
	이름: <%=name %><br>
	나이: <%=age %><br>
	성별: <%=gender %><br>
	운동: <%=sports %><br>
	<%
		out.print("<hr>");
		Enumeration e = application.getInitParameterNames();
		while(e.hasMoreElements()){
			String n = (String)e.nextElement();
			out.print(n+"="+application.getInitParameter(n)+"<br>");
			
		}
	%>
</body>
</html>