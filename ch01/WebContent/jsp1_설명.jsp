<!-- 
	JSP 
		. 동적으로 웹 컨텐츠를 생성하기 위한 "자바기반 스크립트 언어"이다.
		. 웹문서에 삽입되는"스크립트 방식으로 프로그래밍"을 작성할 수 있다.
		. 자바에 기반하므로 자바언어의 특성을 그대로 활용할 수 있고 다양한 외부 라이브러리를 활용가능
		. 표현언어(EL), 자바표준태그라이브러리(JSTL) 활용할수 있다.
		. 현재 제공되는 웹서비스들은 대부분 JSP를 기반으로 개발된 웹들이다.
		. Spring과 같은 자바언어에 기반을 둔 Spring,struts등과 같은 프레임워크도 존재한다.
		. 스크립틀릿(% %) 활용한 자바코드 작성
			- 액션태그
			- 표현언어
			- JSTL
			- 태그라이브러리
			- 페이지이동
			- 데이터베이스 활용
		. 용어
			- 지시자 : (@% ~~~~~~~~~~~~~ %)
			- 선언자 : (%! ~~~~~~~~~~~~~ %) 선언
			- scriptlet : (%~~~%) 코드작성 
			- 표현자 : (%= 변수|연산자%) out.print()와 같은역할
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	h1{color:blue}
</style>
</head>
<body>
	<%
		String str="JSP에서 자바입니다.";
		out.print("<h1>"+str+"</h1>");
	%>
	<span>출력값 : </span><input type="text" value="<%=str+" 월요일"%>">
</body>
</html>