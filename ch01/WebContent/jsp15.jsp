<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
	String id = request.getParameter("user_id");
    String pw = request.getParameter("user_pw");
	//아이디
	//패스워드
	//유효성검사 / admin, 1234이면 "관리자로 로그인하셧습니다"
	// "회원정보수정, 회원정보삭제" 버튼이 보이게한다.
	// 만약 admin이 아니라면 "id님 Guest로 로그인 하셨습니다."
	// 아무것도 입력하지 않고 로그인하였다면 "아이디와 비밀번호를 입력해주세요 " 출력하고 로그인창이동href처리
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(id !=null && id.length() !=0){ 
			if(id.equals("admin") && pw.equals("1234")){
				out.print("<h3>관리자로 로그인 하셨습니다.</h3>");
				out.print("<button>회원정보수정</button>");
				out.print("<button>회원정보삭제</button>");
			}else
				out.print(id+"님! Guest로 로그인 하셨습니다.");
			}
		else{
			out.print("<h3>아이디와 비밀번호를 입력하세요</h3>");
			out.print("<a href='http://localhost:8080/ch01/html/jsp14.html'>로그인창으로 이동</a>");
		}

	%>
</body>
</html>