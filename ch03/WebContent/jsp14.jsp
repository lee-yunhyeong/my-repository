<!--
	exception(Exception객체)
		- JSP페이지에 관련된 일을 하는 과정에서 방생한 예외를 처리하기 위한 객체
		- 메소드
			 getMessage() : 에러메세지를 가져온다
		
		- 구현방법
				실행페이지					에러페이지
				errorPage="에러페이지"		isError = "true"
										web.xml에 설정
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>오류가 발생한 페이지</h3>
	<%
		int num1 = 10;
		int num2 = 0;
		int result = num1/num2;
		out.print("<h3>계산한 결과값 : "+result+"</h3>");
	%>
</body>
</html>