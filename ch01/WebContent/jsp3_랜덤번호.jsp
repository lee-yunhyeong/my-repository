<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>이번주 로또번호는?</p>
	<hr>
	<div>
		<p>행운의 번호를 추첨합니다.</p>
		<%!
			static String lotto(){
				int random =(int)((Math.floor(Math.random()*46))+1);
				return Integer.toString(random);
			}
		%>
		<%
			out.print("<h3>");
			for(int i=0; i<6; i++){
				out.print(lotto()+" ");
			}
			out.print("</h3>");
		%>
	</div>
</body>
</html>