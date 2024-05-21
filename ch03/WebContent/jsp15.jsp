<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>404오류를 발생시키고 web.xml에서 404오류가 발생할 페이지를 설정하여 오류페이지를 작성하세요</p>
	<div>
		<h3>입력창입니다.</h3>
		<form action="jsp16.jsp">
			이름 : <input type="text" name="name"><br>
			나이 : <input type="text" name="age"><br><br>
			<input type="submit" value="입력">
			<input type="reset" value="취소">
		</form>
	</div>
</body>
</html>