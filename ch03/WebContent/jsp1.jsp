<!-- 
	JSP의 내장객체
		- JSP에서 여러기능을 묶어서 미리 만들어 제공하는 객체
		- 표준객체
			. request HttpServletRequest 클라이언트의 요청정보관리객체
			. response HttpServletResponse 웹 서버의 응답정보 관리 객체
			--------------------------------------------------------
			pageContext pageContext  JSP페이지에 대한 정보관리
									  하나의 JSP페이지에 1:1대응되는 객체
			----------------------------------------------------------
			session HttpSession			HTTP세션 정보관리
										웹 브라우저 단위로 데이터가 공유된다.
										한 사용자의 로그인 정보를 유자할 때 사용된다.
										세션이 생성되면 웹 브라우저를 종료할때까지
										모든 요청들은 한개의 session영역에 포함된다.
				* HTTP프로토콜의 특징중 하나는 무상태(Stateless)이다.
					- 한번 요청에 대한 응답후에는 연결이 끊긴다.
					- 연결된 상태가 없기 때문에 서버는 요청이 왔을때 이전 클라이언트와 동일한
						클라이언트인지 확인할 방법이 없다 >> 세션에 로그인 정보를 넣고 동일한 로그인을 확인한다.
					- 세션이란 쿠키를 기반으로 일정시간 동안 같은 브라우저로부터 들어오는 요구를 하나의 상태로 보고
						그 상태를 유지하는 기술이다.
					--------------------------------------------------------------
			application ServeltContext 웹 어플리케이션에 대한 정보관리
										애플리케이션내에서 데이터를 공유해야할 상황에 활용
											(성정정보, 모든 JSP공유데이터 등에 활용된다)
			------------------------------------------------------------------------------
			out			JspWriter			Jsp페이지가 생성하는 결과를 출력할때 사용되는 출력스트림
			-------------------------------------------------------------------------------
			config		ServletConfig		Jsp페이지에 대한 설정정보관리
			--------------------------------------------------------------------------------
			page		object				Jsp페이지를 구현한 자바클래스의 인스턴스
			-------------------------------------------------------------------------------
			exception	Throwable			예외처리에 사용, 오직 에러페이지에서만 import가능
			-------------------------------------------------------------------------------
	1. PageContext객체
		- 하나의 JSP페이지와 1:1로 대응되는 객체
		- 다른 내장객체에 접근할 수 있게 해주는 메소드들이 존재한다.
		- 보통 하나의 페이지 안에서 모든 변수가 공유된다. 잘 사용되지 않는다.
		
		- 메소드
			. getRequest() : request내장 객체를 가져온다
			. getResponse() : response객체를 가져온다
			. getOut() : out내장객체를 가져온다
			. getServletConfig : config 내장객체를 가져온다
			. getServletContext : application 내장객체를 가져온다
			. getException() : exception 내장객체를 가져온다
			. getPage() : page내장객체를 가져온다.
			
			. forward() : 현재의 페이지에서 다른 페이지로 이동
			. include() : 현재의 페이지에 다른페이지를 포함
			
			. getRealPath(String path) : 웹 애플리케이션안에서 지정한경로에 대한 파일경로 리턴
			. getResource(String path) : 지정한 경로에 해당하는 파일에 접근할수 있는 URL 객체 리턴
			
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
	<h3>출력</h3>
	<%
		out.print("out.print()메소드를 활용하여 출력합니다 <br>");
		pageContext.getOut().print("pageContext.getOut()으로 out 객체를 가져와서 출력");
		
		// 페이지이동 1
		//String e_name = URLEncoder.encode("홍길동","utf-8");
		//pageContext.forward("jsp2.jsp?name="+e_name);
		
		// 페이지 이동 2
		request.setAttribute("name", "홍길동"); //request
		session.setAttribute("name2", "강감찬"); //session
		application.setAttribute("name3", "을지문덕"); //application
		
		//pageContext.forward("jsp2.jsp");	//forward
		response.sendRedirect("jsp2.jsp");	//redirect: 
	%>
</body>
</html>