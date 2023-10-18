<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>문자열 검색</h3>

<!-- contains() : 검색 대상 문자열의 포함 여부를 확인 -->
Hello Java Server Pages! => ${fn:contains("Hello Java Server Pages!","java")}<br><br>

<!-- containsIgnoreCase() : 대,소문자와 상관없이 검색 대상 문자열 포함 여부 확인 -->
Hello Java Server Pages! => ${fn:containsIgnoreCase("Hello Java Server Pages!","java")}

</body>
</html>