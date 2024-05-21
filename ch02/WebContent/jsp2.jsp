<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setContentType("text/html;charset=utf-8");
	%>
	<ul>
		<li>클라이언트의 IP주소 : <%=request.getRemoteAddr() %></li>
		<li>요청받은 정보의 길이 : <%=request.getContentLength() %></li>
		<li>받은문서 인코딩 :  <%=request.getCharacterEncoding () %></li>
		<li>전송문서 인코딩 : <%=response.getCharacterEncoding () %></li>
		<li>문서타입 : <%=response.getContentType() %></li>
		<li>전송방식 : <%=request.getMethod() %></li>
		<li>요청URI : <%=request.getRequestURI() %></li>
		<li>서블릿경로 : <%=request.getServletPath() %></li>
	</ul>
	<a href="jsp3.jsp">이동</a>
</body>
</html>