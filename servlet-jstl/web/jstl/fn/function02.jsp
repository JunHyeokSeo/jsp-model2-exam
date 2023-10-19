<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>문자열 분리하고 연결하기</h3>

	<!-- split() : 문자열을 공백으로 분리하여 배열 형태로 반환 -->
    <c:set var="texts" value = "${fn:split('Hello Java Server Pages!',' ') }"/>
    
    <!-- length() : 문자열의 길이 반환 -->
    <!-- length(texts) : 배열의 크기(4) 구함 -->
    <c:forEach var="i" begin="0" end="${fn:length(texts)-1}">
        text[${i}] = ${texts[i]}<br>
    </c:forEach>
    
    <!-- join() : 배열 형태의 문자열을 구분자('-')로 연결하여 반환 -->
    <p><c:out value="${fn:join(texts,'-') }"/>                                  <!--Hello-Java-Server-Pages!-->
    
</body>
</html>
