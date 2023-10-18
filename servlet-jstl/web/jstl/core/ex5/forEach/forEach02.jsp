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

<h3>구구단</h3>

<table border="1" width=700>
<tr>
<c:forEach var ="dan" begin="2" end="9">
	<td>
		<c:forEach var ="j" begin = "1" end="9">
			${dan }*${j } = ${dan*j } <br>
		</c:forEach>
	</td>
</c:forEach>
</tr>
</table>

</body>
</html>
