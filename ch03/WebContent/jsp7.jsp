<%@page import="java.io.IOException"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String path = "/file/list.txt";
	%>
	<%=application.getRealPath(path) %>
	<hr>
	<%
		
		FileReader fr = null;
		BufferedReader br = null;
		String line = null;
		try{
			String realPath = application.getRealPath(path);
			fr = new FileReader(realPath);
			br = new BufferedReader(fr);
			while ((line=br.readLine())!=null){
				out.print(line);
				out.print("<br>");
			}
		}catch(IOException e){
			out.print(e.getMessage());
		}
				
	%>
</body>
</html>