<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		border: 1px solid black;
		margin: 100px auto;
		text-align: center;
		border-collapse: collapse;
	}
	td{
		border : 1px solid black;
	}
	input{border:none}
	div{text-align: center}
</style>
</head>
<body>
	<div>
		<form action="jsp3.jsp">
			<table>
				<tr>
					<td>아이디</td><td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비밀번호</td><td><input type="password" name="pwd"></td>
				</tr>
				<tr >
					<td colspan="2">
						<input type="submit" value="로그인">&nbsp;&nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
			<a href="">신규 회원가입</a>
		</form>
	</div>
</body>
</html>