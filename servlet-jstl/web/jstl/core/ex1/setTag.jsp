<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- set : 변수를 생성 -->
<c:set var="num1" value="20" />
<c:set var="num2">
10.5
</c:set>
<c:set var="today" value="<%= new java.util.Date() %>" />
<html>
	<head>
		<title>set 태그와 remove 태그</title>
	</head>
	<body>
		<%
			String s = "jsp";
		%>
		<!-- jsp로 정의한 s변수는 EL로 출력되지 않는다. -->
		변수 s = ${s } <br>	
	
		<!-- set태그로 정의한 num1변수는 EL로 출력된다. -->
		변수 num1 = ${num1} <br>
		변수 num2 = ${num2} <br>
		num1 + num2 = ${num1 + num2} <br>
		오늘은 ${today} 입니다.

		<!-- remove : 변수를 삭제 -->
		<c:remove var="num1" scope="page" />

		<p>
		삭제한 후의 num1 = ${num1} <br>
		삭제한 후의 num1 + num2 = ${num1 + num2}
	</body>
</html>




