<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empty 연산자</title>
</head>
<body>

<h3>empty 연산자</h3>

<%  // 공유 설정
	request.setAttribute("title", "EL 연산자");
%>

${empty title } <br>         <!-- false -->
${empty title2 } <br>        <!-- true -->

</body>
</html>