<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 
	<ul>
		<li>이름 : <%=request.getParameter("name") %></li>
		<li>전화번호 :<%=request.getParameter("phone") %></li>
		<li>성별 : <%=request.getParameter("gender")%>
		</li>
		<li>좋아하는 운동 : <%
				String[] sports = request.getParameterValues("sports");
				if(sports != null){
					for(int i=0; i<sports.length; i++){
						out.print(sports[i]+" ");
					}
				}
				
			%>
		</li>
		<li>좋아하는 계절 : <%= request.getParameter("season") %>
		</li>
	</ul> 
	--%>
	<h3>form으로 요청한 파라미터를 읽어서 출력한다(응답)</h3>
	<hr>
	<%
		Enumeration en = request.getParameterNames();// 키, 키
		Map m = request.getParameterMap(); // 키값, 키값
		while(en.hasMoreElements()){
			String name= (String)en.nextElement();
			String[] values= (String[])m.get(name);
			out.print(name+": ");
			if(values !=null){
				for(String value: values){
					out.print(value+" ");
				}
			}
			out.print("<br>");
		}
	%>
</body>
</html>