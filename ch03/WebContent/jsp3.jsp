<!--
	. 내장객체
	. scope
	. forward / redirect 페이지 이동
	. 자바객체(bean)
	. 
-->

<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bean.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>요청페이지 입니다.</h3>
	<hr>
	<%
		Person p = new Person("홍길동",25,"010-1111-2222");
		request.setAttribute("person", p);
		pageContext.forward("jsp4.jsp");
		// 이름, 나이, 전화번호를 다음페이지로 데이터를 넘겨서 이동시켜보세요
		// 1) forward방식으로 파라미터 넘기기
			//String e_name = URLEncoder.encode("이윤형","utf-8");
			//String age = "26";
			//String phone = "010-7363-5626";
			//pageContext.forward("jsp4.jsp?name="+e_name+"&age="+age+"&phone="+phone);
		// 2) sendredirect 방식으로 파라미터 넘기기
			//String e_name=URLEncoder.encode("이윤형","utf-8");
			//session.setAttribute("age2","26");
			//session.setAttribute("phone2","010-7363-5626");
			
			//response.sendRedirect("jsp4.jsp?name=lee&age=26&phone=010-7363-5626"); 
		// 3) request에 setAttribute로 저장하고 forward방식으로 넘기기
			//request.setAttribute("name3", "이윤형");
			//request.setAttribute("age3", "26");
			//request.setAttribute("phone3", "010-7363-5626");
			//pageContext.forward("jsp4.jsp");
		// 4) session에 setAttribute로 저장하고 forward방식으로 넘기기
			//session.setAttribute("name4", "이윤형");;
			//session.setAttribute("age4", "26");
			//session.setAttribute("phone4", "010-7363-5626");
			//pageContext.forward("jsp4.jsp");
		// 5) application에 저장하고 forward방식으로 넘기기
			//application.setAttribute("name5", "이윤형");
			//application.setAttribute("age5", "26");
			//application.setAttribute("phone5", "010-7363-5626");
			//pageContext.forward("jsp4.jsp");
	%>
</body>
</html>