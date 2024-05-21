<!-- 
	response객체
		; 웹 브라우저에게 보내는 응답에 대한 정보를 저장한 객체 
	. 메소드
		- addHeader(String name, String value) : 
		- getHeader(String name) : 헤더의 이름에 해당 값을 가져온다
		- addCookie(Cookie cookie) : 쿠키 데이터 설정
		- addDateHeader(String name, int date) : 설정한 헤더이름에 날짜/시간 추가
		- addIntHeader(String name, int value)
		- setIntHeader(String name, int value)
		
		- sendRedirect(String location) : 현재 페이지를 다른 페이지로 이동
		- setBufferSize(int size) : 출력 버퍼 크기설정
		- flushBuffer() : 버퍼의 내용을 클라이언트에게 전송
		- 
		- setContentType(String type) : 웹 브라우저에 응답할 MiME타입 유형설정
		- getContentType(String type)
		- setCharacterEncoding() : 웹 브라우저에 응답할 문자 인코딩을 설정
		- getCharacterEncoding() : 
		- sendStatus(int status_code) : 응답상태코드
		- sendError(int status_code) : 오류응답을 클라이언트에게 전송
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
	<%
		response.setBufferSize(8192*2);
		out.print("<h3>버퍼사이즈:"+response.getBufferSize()+"바이트</h3>");
		response.setContentType("text/html;charset=utf-8");
		/* response.sendRedirect("http://www.naver.com"); */
		out.print(response.getContentType());
		response.addHeader("name", "홍길동");
		response.addHeader("age", "30");
		pageContext.forward("jsp7.jsp");// 주소줄은 jsp7으로 넘어가진 않고 jsp6에 있다.
	%>
</body>
</html>







