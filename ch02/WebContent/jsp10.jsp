<!-- 
	response객체
		. getWrite() PrintWrite
			- 서비스를 요청한 클라이언트와 서버간에 연결된 PrintWrite객체를 생성/반환한다
		. setBufferSize(int size)
			- 출력스트림의 버퍼크기를 설정한다.
		. setCharacterEncoding(String charset)
			- 응답정보 인코딩에 사용할 문자를 설정한다.
		. addCookie(Cookie cookie)
			- 쿠기를 응답정보의 헤더에 추가한다.
		★ sendRedirect(String location)
			- 응답을 클리아언트 요청한 URL이 아니라, sendRedirect에 주어진 URL로 재전송
			- location은 절대/상대주소 가능하다
			- 처음클라이언트가 요청하는 방식으로 지정한 URL로 이동한다. (request가 새로 생성된다)
 -->
<%@page import="java.net.URLEncoder"%>
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
		String url = "http://localhost:8080/ch02/jsp11.jsp?name=";//?name=
		
		String e_name = URLEncoder.encode("홍길동","utf-8");
		String e_addr = URLEncoder.encode("서울","utf-8");
		
		// request에 이름과 주소를 저장해서 이동한 페이지에서 읽을 수 있는지 확인해보자
		request.setAttribute("e_name", e_name);
		request.setAttribute("e_addr", e_addr);
		
		
		//sendRedirect로 데이터를 이동시켜보자
		response.sendRedirect(url+e_name+"&addr="+e_addr);//&이름=값&이름=값
		
	%>
</body>
</html>