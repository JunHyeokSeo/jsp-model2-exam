<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date"%>

<html>
<head><title>timeZone 태그</title></head>
<body>

<c:set var="now" value="<%= new Date() %>" />

<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />
<br>

<fmt:timeZone value="Hongkong">
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" />
</fmt:timeZone>

</body>
</html>
