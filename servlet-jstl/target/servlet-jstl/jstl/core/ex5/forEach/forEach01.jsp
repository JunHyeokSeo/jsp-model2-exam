<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach 태그</title>
</head>
<body>

<h3>1부터 100까지 홀수의 합</h3>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum + i}" />
</c:forEach>
결과 = ${sum}

</body>
</html>