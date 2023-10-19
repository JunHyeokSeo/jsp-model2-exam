<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date"%>

<html>
<head><title>timeZone 태그</title></head>
<body>

<c:set var="now" value="<%= new Date() %>" />
<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /> <!--2023년 10월 19일 목요일 오전 11시 25분 26초 대한민국 표준시-->
<br>

<fmt:timeZone value="Hongkong">
<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /> <!--2023년 10월 19일 목요일 오전 10시 25분 26초 홍콩 표준시 -->
</fmt:timeZone>

</body>
</html>
