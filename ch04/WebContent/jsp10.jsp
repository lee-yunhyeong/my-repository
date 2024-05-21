<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기가 메인입니다. 포함시켜봅니다</h3>
	<jsp:include page="jsp11.jsp">
		<jsp:param value="이순신" name="name"/>
		<jsp:param value="20" name="age"/>
		<jsp:param value="010-1234-5678" name="tel"/>
	</jsp:include>
</body>
</html>
