<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h3>실행후 포함될 페이지</h3>
		이름:<%=request.getParameter("name") %><br>
		나이:<%=request.getParameter("age") %><br>
		전화번호:<%=request.getParameter("tel") %>
	</div>
</body>
</html>