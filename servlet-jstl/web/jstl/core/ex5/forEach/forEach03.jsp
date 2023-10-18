<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach 태그</title>
</head>
<body>

<h3>int형 배열</h3>
<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>" />

<c:forEach var="i" items="${intArray}">
    ${i}
</c:forEach>

</body>
</html>