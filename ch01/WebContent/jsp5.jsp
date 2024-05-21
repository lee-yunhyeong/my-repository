<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>선언 : JSP페이지에 삽입되는 자바 메소드선언</h3>
	<hr>
	<h3>메소드 선언</h3>
	<%!
		public int add(int a, int b){
			int sum = a+b;
			return sum;
		}
	%>
	<h3>시크립틀릿</h3>
	<%
		String str= "Hello JSP~~";
		out.print("<span>"+str+"</span>");
	%>
	<h3>표현식</h3>
	<p>표현식은 출력되는 위치에 여러곳에 사용될 수 있다</p>
	<p>오늘 처음 JSP를 학습하며, <span><%=str %></span>라고 인사도 해보았습니다.</p>
	<table border="1">
		<tr><td><%=str %></td></tr>
	</table>
</body>
</html>