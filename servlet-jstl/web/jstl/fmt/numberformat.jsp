<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head><title>formatNumber 태그</title></head>
<body>

<c:set var="price" value="10000" />

<!-- type="number" : 3자리씩 컴마로 구분해서 출력 -->
<fmt:formatNumber value="${price}" type="number" var="numberType" />
숫자: ${numberType} <br>                                                                    <!--10,000-->

<!-- type="currency" : 통화기호 출력 -->
통화: <fmt:formatNumber value="${price}" type="currency" currencySymbol="$" /><br>          <!--$10,000.00-->

<!-- type="percent" : percent(%)기호 출력 -->
퍼센트: <fmt:formatNumber value="${price}" type="percent" groupingUsed="true" /> <br>       <!--1,000,000%-->
퍼센트: <fmt:formatNumber value="${price}" type="percent" groupingUsed="false" /> <br>      <!--1000000%-->

패턴: <fmt:formatNumber value="${price}" pattern="00000000.00"/>                            <!--00010000.00-->

</body>
</html>
