<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>redirect로 넘어온 데이터를 읽어보자</h3>
	<%
		// sendRedirect로 넘어온 값은 getParameter로 읽는다.
		String name = request.getParameter("name");
		String address = request.getParameter("addr");
		out.print("<h3>이름:"+name+", 주소:"+address+"</h3>");
		out.print("<hr>");
		
		//request에 저장해둔 이름과 주소를 가져와 보자
		String name2 = (String)request.getAttribute("e_name");
		String address2= (String)request.getAttribute("e_addr");
		out.print("<h3>이름:"+name2+", 주소:"+address2+"</h3>");
	%>
	
	이름: <%=name %><br>
	주소: <%=address %>
</body>
</html>