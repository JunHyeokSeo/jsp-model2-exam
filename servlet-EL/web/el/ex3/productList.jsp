<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 예제</title>
</head>
<body>

<center>
	<h2>EL 예제</h2>
	<hr>
	<form method="post" action="productSel.jsp">
	     
	     <%--
	     1. DTO객체(product)를 생성해서 세션에 저장하라는 의미
	     2. Product product = new Product();
	        session.setAttribute( "product", product ); - useBean 객체를 session으로 공유한다
	    --%>
		<jsp:useBean id="product" class="model.Product" scope="session"/>
		<select name="sel">
			<%
			   for(String item : product.getProductList()) {
				 	out.println("<option>" + item + "</option>");
			   }
			%>		
		</select>
		<input type="submit" value="선택">
	</form>
</center>

</body>
</html>