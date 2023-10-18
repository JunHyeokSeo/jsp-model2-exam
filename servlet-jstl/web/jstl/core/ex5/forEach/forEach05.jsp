<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<!-- 방법2(request 공유) : 자주 사용-->
<%--
<c:forEach var="s" items="${requestScope(slist)}">
<c:forEach var="s" items="${slist}">

slist라는 'name'값을 가지고 공유하고 있는 값이 모든 JSP 영역에 하나밖에 없을 때,
requestScope를 생략하여 사용할 수 있다.
단, slist가 request에도 있고 session에도 있다면 간략화된 형태는 사용할 수 없다.
--%>
<c:forEach var="s" items="${slist}">
    ${s} <br>
</c:forEach>
<br><br>

</body>
</html>