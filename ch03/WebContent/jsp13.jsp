<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 네번째 페이지입니다</h3>
	<hr>
	<%
		String n =request.getParameter("name");
		String a =request.getParameter("age");
		String t =request.getParameter("tel");
	%>
	<%=n %>,<%=a %>,<%=t %>,<br>
	<%
		Person p1 = (Person)request.getAttribute("person1");
		Person p2 = (Person)session.getAttribute("person2");
	%>
	<%=p1.getName() %>,<%=p1.getAge() %>,<%=p1.getTel() %><br>
	<%=p2.getName() %>,<%=p2.getAge() %>,<%=p2.getTel() %>
</body>
</html>