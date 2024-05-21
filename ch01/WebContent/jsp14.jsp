<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{background-image: url("../img/독일.jpg")}
</style>
<script type="text/javascript">
	function chk() {
		if(!frm.num.value){ /*없거나*/
			alert("숫자를 입력하세요");
			frm.num.focus();
			return false;
		}
		if(isNaN(frm.num.value)){/*숫자가 아니거나*/
			alert("숫자로 입력하셔야합니다.");
			frm.num.focus();
			frm.num.value="";
			return false;		
		}
		return true;
	}
</script>
</head>
<body>
	<h3>1부터 더하고 싶은 숫자를 입력하세요</h3>
	<hr>
	<form action="jsp14.jsp" name="frm" onsubmit="return chk()">
		<table>
		 	<tr><td><input type="text" name="num">까지 더해주세요!</td></tr>
		 	<tr>
		 		<td><input type="submit" value="확인"></td>
		 	</tr>
		</table>
	</form>
	<hr>
	<%
		int sum=0,num=0;
		//유효성 검사
		if(request.getParameter("num") !=null){
			num = Integer.parseInt(request.getParameter("num"));
			for(int i=1; i<=num; i++){
				sum +=i;
			}
		}
	%>
	<h3>1부터<%=num %>까지의 누적의 합은 <%=sum %>입니다</h3>
</body>
</html>