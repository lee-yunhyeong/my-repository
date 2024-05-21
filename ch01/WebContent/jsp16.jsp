<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	질의 문자열
		- 클라이언트가 웹서버에 정보를 요청할때 사용하는 문자열을 질의 문자열이라고 한다.
		1) 질의 문자열의 전송규칙
			  . 데이터를 입력할수 있는 화면을 만들어야 한다.
			  	- name=value 형식으로 전돨되고, 여러개의 쌍일때는 &를 구분자로 한다.
			  	- 영문,숫자,일부특수문자는 그대로 전달되고 그외 문자(한글) %기호와 함께 16진수로 전환되어 전달된다.
			  	
			  	(주의) URL은 공백을 포함할 수 없는 특징이 있다.(공백없어야한다)
			  . 입력한 자료를 서버로 전달해야 한다(submit)
			  . 요청한 서비스를 처리해야한다.  
		2) 입력시 주의사항
			. 속성값은 대소문자를 구분한다.
			. 단어가 하나일때는 ""를 생략해도 되지만, 두개의 단어일 경우 반드시 ""로 묶는다.
		3) 값읽기
			. 입력 : input type="text" | textarea name="파라미터이름" value="값"
			. 읽어오기 : request.getParameter("파라미터이름")
			
			. 입력 : input type="checkbox"
			. 일어오기 : String[] str = request.getParameterValues("파라미터이름")
			
			. 입력 : input type="radio"
			. 일어오기 : checked로 선택값 체크
			
			. 입력 : select name="파라미터이름"
			. 일어오기 : selected로 선택값 체크
-->
<%
	request.setCharacterEncoding("utf-8"); 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw1");
	String[] hobby = request.getParameterValues("hobby");
	// getParameterValues("hobby") : checkbox등의 다중값을 배열로
	String[] religion = request.getParameterValues("religion");
	String introduction = request.getParameter("introduction");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원 가입정보</h3>
	<hr>
	<p>아이디 : <%=id %></p>
	<p>비밀번호 : <%=pw %></p>
	<p>취&nbsp;&nbsp;&nbsp;미 :
		<%
			for(int i=0; i<hobby.length; i++){
				if(i<hobby.length-1){
					out.print(hobby[i]+",");
				}else{
					out.print(hobby[i]);
				}
			}
		%>
	</p>
	<p>종&nbsp;&nbsp;&nbsp;교 : 
		<%
			for(int i=0; i<religion.length; i++){
				if(i<religion.length-1){
					out.print(religion[i]+",");
				}else{
					out.print(religion[i]);
				}
			}
		%>
	</p>
	<p>자기소개 : <%=introduction %></p>
</body>
</html>