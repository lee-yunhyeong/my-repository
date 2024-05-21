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
		// https://search.naver.com/search.naver?where=nexearch&squery=
		/*
			위의 주소로 sendRedirect방식으로 "JSP프로그래밍" 데이터를 넘겨보세요
		*/
		String search = "JSP프로그래밍"; 
		String url = "https://search.naver.com/search.naver?where=nexearch&squery=";
		String e_search = URLEncoder.encode(search,"utf-8");
		response.sendRedirect(url+e_search);
	
	%>
</body>
</html>