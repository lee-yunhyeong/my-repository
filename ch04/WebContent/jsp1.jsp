<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{margin: 100px auto;
		width: 500px;
		height: 500px;
		border: 1px solid black;
	}
</style>
</head>
<body>
	
	<div>
	<h3>include지시어로 이미지를 삽입해봅니다.</h3>
		<%@ include file= "../image.jsp" %>
	</div>
		<%@ include file ="../image.jsp" %>
	<h3>하단입니다.</h3>
		<%@ include file ="../test.jsp" %>
</body>
</html>