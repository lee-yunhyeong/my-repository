<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	. 동적 웹문서 : 요청할때마다 다른 문서의 내용을 클라이언트에게 전달하는 문서
	. 동적 웹 기술 : CGI, ASP, PHP, JSP
	. 
		클라이언트 ----- http요청 ----- 웹서버			웹 컨테이너
								  (Apache)		(Tomcat)
								  request받아서
								    정적/동적 판단--동적--서블릿--java--jsp
								  					(동적문서생성)
								  						|
								    결과를 받아서
		클라이언트----- http응답 ----- 클라이언트에게-------------
								  response전송
	. http요청
		--------------------------------------------------
		요청방식                Request-URL        HTTP버전
		(http메소드) (request target)        
		
		헤더(header)
		바디(body)
		--------------------------------------------------
		
		
		요청방식 : Get방식
					- 기본방식(주소줄에 직접입력, a태그로 href처리한 경우, get명시)
					- name=value 쌍으로 URI?뒤에 추가되어서 전송된다.
					- 메시지의 헤더쪽으로 전송된다.
					- 보안에 취약하고 제한된 데이터만 전송할 수 있다
				Post방식
					- 메시지의 바디(body)쪽으로 전송된다.
					- 보안에 강하고 큰 데이터(파일)을 전송할 수 있다.
					- 속도는 느리다.
	. http응답
		--------------------------------------------------
		http버전		상태코드			상태텍스트
					.200/404/500,	
		
		헤더(header)
		바디(body)
		--------------------------------------------------	
						
	. JSP에 내장된 객체
		- request >> pageContext >> session >> application	(scope)
		 >> setAttribute(키,값) - getAttribute(키)
		 
		   (Scope)	   (객체명)
		 . request 	   request : 클라이언트가 요청할때 마다 생성되는 객체
		 . page        pageContext : 실행중인 JSP페이지당 생성되는 갳게
		 . session 	   session: 클라이언트별로 만들어지는 객체
		 . application application: 톰캣 구동시 Web Context별로 생성되는 객체
		- out, error
	. 페이지 전환방식
		- forward방식
			- 받은 request를 다음 페이지로 위임하는 방식
			- 이때 request는 동일한 request를 공유하게 된다.
			
		- redirect방식
			- 최초 신규접속과 같은 방식으로 접속된다.
			- 매번 호출될때마다 request는 새로 생성된다.
				>> getAttribute()로 받지 못하고, getParameter()를 받아야한다.	
	. Request(요청)객체란?
		1) 클라이언트가 웹서버에 요청한 정보관련 메소드
			. 클라이언트 정보
				- 클라이언트 IP주소 : getRemoteAddr() - String
				- 요청한 정보길이 : getContentLength() - long
				- 요청할때 사용한 문자열인코딩 : getCharacterEncording() - String
				- 요청받은 문자열 인코딩 설정 : setCharacterEncording(String 타입)
				- 전송할때 사용한 문서타입 : getContentType()
				- 전송할때 사용한 전송방식 : getMethod() - String
				- 전송할때 사용한 URL경로 : getRequestURI() - String
			. 서버관련 정보
				- JSP페이지가 속한 웹애플리케이션(Context)의 JSP페이지의 경로 - getContextPath()
				- 연결할때 사용한 서버주소 : getServerName() - String
				- 연결할때 사용한 포트번호 : getServerPort() - int
			. 요청데이터의 헤더정보처리
				- 지정한 이름의 헤더값 알아보기 : getHeader(String name) - String
				- 지정한 이름의 헤더 목록 알아보기 : getHeaders(String name) - Enumeration
				- 모든 헤더의 이름을 알아오기 : getHeaderNames() - Enumeration
				- 등등...
		2) 클리이언트가 웹서버에 전송한 정보 > 데이터 읽기 메소드
			. 폼을 통해 전송되는 name값 읽기 : getParameter(name)
			. 폼을 통해 전송되는 여러개의 값 : getParameterValues(name) Srting[]
			. 웹브라우저가 전송한 파라미터의 name들 : getParameterNames() Enumeration
			. 웹브라우저가 전송한 파라미터와 값을 Map으로 반환 : getParameterMap() Map
		3) request객체에 데이터 저장관리 메소드
			. request객체가 존재하는 동안 사용하고 싶은 데이터 저장
				>> request.setAttribute(String name, Object obj)
			. 읽기 : request.getAttribute(String name)
			. 삭제 : request.removeAttribute(String name)
		4) 세션관련 메소드
			. 클라이언트가 사용한 session객체 : getSession() HttpSession
			. 클라이언트가 보낸 모든 쿠키 : getCookies() Cookie[]
		5) 서블릿객체 
			. 서버가 시작될때 웹 애플리케이션 단위로 생성된다. - ServletContext
			. getServletContext() - ServletContext
		
		IPv4, IPv6(window7부터 적용)
			- IPv4 : 32비트 - 42억개 주소
			- IPv6 : 128비트 - 43억*43억*43억*43억 개의 주소가 가능
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request객체</title>
</head>
<body>
		<h3>클라이언트가 서비스를 요청하였습니다.</h3>
		<hr>
		<form action="jsp2.jsp" method="post">
			요청내용 : <input type="text" name="service"><br>
			<input type="submit" value="요청">
		</form>
</body>
</html>