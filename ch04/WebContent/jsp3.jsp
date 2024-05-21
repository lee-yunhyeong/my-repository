<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인 체크 페이지입니다.</h3>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	%>
	아이디 : <%=id %>
	비밀번호 : <%=pwd %>
	<%
		pageContext.forward("jsp4.jsp");
	
	%>
	<p>로그인체크를 하고 ID와 PWD가 맞으면 로그인한 사람의 정보를<br> request에 저장하고 jsp4페이지로 이동한다</p>
</body>
</html>