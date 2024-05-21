<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>input으로 성적을 입력받고 if문으로 A,B,C,D,F로 채점하세요</h3>
	
	<%
		Scanner sc = new Scanner(System.in);
		System.out.println("성적을 입력해주세요");
		int num = sc.nextInt();
		String score;
		if(num>=90){
			score = "A";
		}
		else if(num>=80){
			score = "B";
		}
		else if(num>=70){
			score = "C";
		}
		else if(num>=60){
			score = "D";
		}
		else{
			score = "F";
		}
	%>
	<h3>당신의 성적은<%=score %>입니다.</h3>
	<form action="" method="post">
	
	</form>
</body>
</html>