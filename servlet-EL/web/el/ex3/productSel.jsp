<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 예제</title>
</head>
<body>
	<center>
		<h2>EL 예제-상품선택</h2>
		<hr>
		1. 선택한 상품은 : ${param.sel} <br>
        <%----%>
		2. num1 + num2 = ${product.num1 + product.num2} <br>
		3. num1 + num2 = ${sessionScope.product.num1 + sessionScope.product.num2} <br>
	</center>
</body>
</html>