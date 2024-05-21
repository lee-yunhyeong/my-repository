<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1</h3>
	<%
		/* Person p = (Person)request.getAttribute("person");
		out.print("이름:"+p.getName()+"<br>");
		out.print("나이:"+p.getAge()+"<br>");
		out.print("주소:"+p.getTel()); */
	
	%>
	<%
		///String name = request.getParameter("name");
		//pageContext.getOut().print(name+"<br>");
		
		//String age = request.getParameter("age");
		//out.print(age+"<br>");
		
		//String phone = request.getParameter("phone");
		//out.print(phone);
	%>
	<h3>2</h3>
	<%
		String name = request.getParameter("name");
		out.print(name+"<br>"); 
		String age = request.getParameter("age");
		out.print(age+"<br>"); 
		String phone = request.getParameter("phone");
		out.print(phone); 
	%>
	<%
		//String name3 = (String)request.getAttribute("name3");
		//pageContext.getOut().print(name3);
		//String age3 = (String)request.getAttribute("age3");
		//pageContext.getOut().print(age3);
		//String phone3 = (String)request.getAttribute("phone3");
		//pageContext.getOut().print(phone3);
	%>
	<%
		//String name4 = (String)session.getAttribute("name4");
		//pageContext.getOut().print(name4);
		//String age4 = (String)session.getAttribute("age4");
		//pageContext.getOut().print(age4);
		//String phone4 = (String)session.getAttribute("phone4");
		//pageContext.getOut().print(phone4);
	%>
	<%
		//String name5 = (String)application.getAttribute("name5");
		//pageContext.getOut().print(name5);
		//String age5 = (String)application.getAttribute("age5");
		//pageContext.getOut().print(age5);
		//String phone5 = (String)application.getAttribute("phone5");
		//pageContext.getOut().print(phone5);
	%>
</body>
</html>