<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>form으로 넘겨온 파라미터를 처리하는 학습(요청페이지)</h3>
	<form action="jsp5.jsp" method="post">
		이름 : <input type="text" name="name"><br>
		전화번호 : <input type="text" name="phone"><br>
		성별 : <input type="radio" name="gender" value="여자">여자
			 <input type="radio" name="gender" value="남자">남자 <br>
		좋아하는 운동 : 
			 <input type="checkbox" name="sports" value="야구">야구&nbsp;
			 <input type="checkbox" name="sports" value="축구">축구&nbsp;
			 <input type="checkbox" name="sports" value="농구">농구&nbsp;
			 <input type="checkbox" name="sports" value="탁구">탁구&nbsp;<br>
		좋아하는 계절 : 
			<select name="season">
				<option value="봄">봄</option>
				<option value="여름">여름</option>
				<option value="가을">가을</option>
				<option value="겨울">겨울</option>
			</select><br>
		<input type="submit" value="전송">&nbsp;&nbsp;
		<input type="reset" value="취소">&nbsp;&nbsp;
	</form>
</body>
</html>