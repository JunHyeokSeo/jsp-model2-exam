<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:if test="true">
    무조건 실행<br>
</c:if>
<c:if test="${param.name == 'toto'}">
    당신의 이름은 ${param.name}입니다. <br>
</c:if>