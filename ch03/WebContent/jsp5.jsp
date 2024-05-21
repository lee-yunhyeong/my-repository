<!--
	2. application
		- 웹 애플리케이션당 한개의 객체가 생성된다
		- 특정 웹 애플리케이션에 포함된 모든 JSP페이지는 하나의 application객체를 공유한다.
		- web.xmldp에 context-param으로 초기값을 설정할수 있다.
		- 현재 웹 애플리케이션이 실행되고 있는 서버의 자원의 정보를 담는 객체이다. (서버측정보)
		
		- 메소드
			. getInitParameter(String str)
			. getInitParameterNames() Enumeration
			. getAttributeNames()
			. getContext(String path) : path경로자원의 컨텍스트 정보반환
			. getRealPath(String path) : path경로의 실제 경로

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

</body>
</html>