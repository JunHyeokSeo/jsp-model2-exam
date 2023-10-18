<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date"%>

<html>
<head><title>formatDate 태그</title></head>
<body>

<c:set var="now" value="<%= new Date() %>" />
<fmt:formatDate value="${now}" type="date" dateStyle="full" /><br>
<fmt:formatDate value="${now}" type="date" dateStyle="short" /><br>
<fmt:formatDate value="${now}" type="time" /><br>
<fmt:formatDate value="${now}" type="both" 
                dateStyle="full" timeStyle="full" /><br>
<fmt:formatDate value="${now}" pattern="z a h:mm" /><br>

<!-- 12시간제 날짜,시간 출력 -->
<fmt:formatDate value="${now }" pattern="yyyy-MM-dd a hh:mm:ss EEE요일"/>
<br><br>

<!-- 24시간제 날짜, 시간 출력-->
<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss EEE요일"/>

</body>
</html>
