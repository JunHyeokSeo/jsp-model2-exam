<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach 태그</title>
</head>
<body>

<h3>List 객체</h3>

<%
	List list = new ArrayList();
	list.add("자바");
	list.add("웹표준");
	list.add("JSP");
	list.add("오라클");
	list.add("스프링");
	list.add("파이썬");
	list.add("텐스플로우");
	list.add("케라스");
	
	request.setAttribute("slist", list);		// 공유 설정
%>

<!-- 방법1 -->
<c:set var="s1" value="<%=list%>"/>
<c:forEach var="s2" items="${s1}">
    ${s2} <br>  
</c:forEach>
<br><br>

<!-- 방법2 -->
<c:forEach var="s" items="${slist}">
    ${s} <br>
</c:forEach>
<br><br>

</body>
</html>