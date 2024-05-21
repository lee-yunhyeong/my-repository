<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	int gugu = Integer.parseInt(request.getParameter("gugu"));
    	request.setCharacterEncoding("utf-8");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-image: url("./img/에티하드.jpg");
	}
</style>
</head>
<body>
	<h3><%=gugu+"단" %>출력</h3>
	<%
		response.setContentType("text/html;charset=utf-8");
		for(int i=1; i<=9; i++){
			out.print(gugu+"*"+i+"="+(gugu*i)+"<br>");
			
		}
	%>
</body>
</html>