<!-- 
	out내장객체
		. 웹 브라우저에 데이터를 전송하는 출력 스트림 객체이다.
		. JSP페이지에 사용되는 모든 표현문과 HTML 태그, 텍스트등은 out객체를 통해서
			웹브라우저에 전달된다.
		. 메소드
			print(String str)
			println() : 줄바꿈은 안된다
			getBufferSize() : 현재 버퍼의 킈를 출력
			getRemaining() : 현재 남아있는 출력버퍼의 크기
			clear() : 출력버퍼에 남아있는 내용을 전송하지 않고 비운다.
			flush() : 현재 출력버퍼에 저자오디어 있는 내용을 웹 브라우저에 전송하고 비운다.
			isAutoFlush() : 출력버퍼가 채워졌을때 자동 전송여부
 -->
<%@page import="java.util.Calendar"%>
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
		out.print("<img src='./img/에티하드.jpg' width='300px' height='300px'><br>");
	%>
	오늘 현재시각: <%=Calendar.getInstance().getTime()%>
	<h3>out내장객체는 jsp페이지에서 생성되는 내용늘 모두 전달받는 객체이다</h3>
	<%
		int sizeBuffer = out.getBufferSize();
		int size = out.getRemaining();
		boolean b = out.isAutoFlush(); // 가득찼을때 자동으로 flush후 true리턴
		
	%>
	버퍼사이즈 : <%=sizeBuffer %><br>
	현재버퍼잔여크기 : <%=size %><br>
	자동플러시했나? : <%=b %>
	<%
		out.clear();
	%>
	현재출력할 값 : <%=size %>
</body>
</html>