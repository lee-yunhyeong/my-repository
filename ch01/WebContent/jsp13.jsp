<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	    int num = Integer.parseInt(request.getParameter("num"));
		request.setCharacterEncoding("utf-8");
    %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{background-image: url("./img/독일.jpg");
		background-repeat: no-repeat;}
</style>
</head>
<body>
	<h3><%=num %>까지 합한 결과입니다.</h3>
	<%
		// 비지니스 로직처리
		response.setContentType("text/html;charset=utf-8");
		int sum=0;
		for(int i=1; i<=num; i++){
			sum=sum+i;
		}
		out.print(sum);
	%>
	<%
		response.setContentType("text/html;charset=utf-8");
		Calendar now = Calendar.getInstance();
		int yy= now.get(Calendar.YEAR);
		int mm= now.get(Calendar.MONTH)+1;
		int dd=now.get(Calendar.DATE);
		out.print("<h3>"+yy+"년 "+mm+"월 "+dd+"일"+"</h3>");
		int week = now.get(Calendar.DAY_OF_WEEK);
		switch (week){
		case 1 : out.print("일요일"); break;
		case 2 : out.print("월요일"); break;
		case 3 : out.print("화요일"); break;
		case 4 : out.print("수요일"); break;
		case 5 : out.print("목요일"); break;
		case 6 : out.print("금요일"); break;
		case 7 : out.print("토요일"); break;
		};
	%>
</body>
</html>