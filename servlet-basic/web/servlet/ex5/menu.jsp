<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
	<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	</head>
<%
	String id = (String)session.getAttribute("id");
%>
<body>
<%
	if(id == null){
%>
  		 <a href="login.jsp" target="rightFrame">로그인</a>
<% 
	}
	else{
%>
		<%=id %> 님 환영합니다.
<%
	}
%>

</body>
</html>