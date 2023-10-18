<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비교연산자</title>
</head>
<body>

<h3>표현언어의 비교연산자</h3>
<table border="1" width="400">
	<tr>
		<th>표현식</th>
		<th>값</th>
	</tr>
	<tr><!-- 같다 -->
		<td>\${10 == 11}</td>
		<td>${10 == 11}</td>
	</tr>
	<tr><!-- 같다 -->
		<td>\${10 eq 11}</td>
		<td>${10 eq 11}</td>
	</tr>
	<tr><!-- 같지않다 -->
		<td>\${10 != 11}</td>
		<td>${10 != 11}</td>
	</tr>
	<tr><!-- 같지않다 -->
		<td>\${10 ne 11}</td>
		<td>${10 ne 11}</td>
	</tr>
	<tr><!-- 작다 -->
		<td>\${10 < 11}</td>
		<td>${10 < 11}</td>
	</tr>
	<tr><!-- 작다 -->
		<td>\${10 lt 11}</td>
		<td>${10 lt 11}</td>
	</tr>
	<tr><!-- 크다 -->
		<td>\${10 > 11}</td>
		<td>${10 > 11}</td>
	</tr>
	<tr><!-- 크다 -->
		<td>\${10 gt 11}</td>
		<td>${10 gt 11}</td>
	</tr>
	<tr><!-- 작거나 같다 -->
		<td>\${10 <= 11}</td>
		<td>${10 <= 11}</td>
	</tr>
	<tr><!-- 작거나 같다 -->
		<td>\${10 le 11}</td>
		<td>${10 le 11}</td>
	</tr>
	<tr><!-- 크거나 같다 -->
		<td>\${10 >= 11}</td>
		<td>${10 >= 11}</td>
	</tr>
	<tr><!-- 크거나 같다 -->
		<td>\${10 ge 11}</td>
		<td>${10 ge 11}</td>
	</tr>
	<tr><!-- 조건 연산자 -->
		<td>\${(5 > 3) ? 5 : 3}</td>
		<td>${(5 > 3) ? 5 : 3}</td>
	</tr>
</table>

</body>
</html>