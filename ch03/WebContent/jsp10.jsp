<!--
		page1			page2			page3					page4
		
		html			name과			name과 age를 받고			전달받은 Person
		 |								tel을 추가해서				name/age/tel을
		 |								Person객체에 담아서			출력(응답)한다.
		 |				age를			request에 저장하고
		name			redirect로		page4로 forward한다
		age				page3 넘긴다	
		입력해서
		전송
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
		<div>
			<h3>입력창입니다.</h3>
			<form action="jsp11.jsp">
				이름 : <input type="text" name="name"><br>
				나이 : <input type="text" name="age"><br><br>
				<input type="submit" value="입력">
				<input type="reset" value="취소">
			</form>
		</div>
</body>
</html>