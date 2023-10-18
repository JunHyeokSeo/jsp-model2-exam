<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>논리연산자</title>
</head>
<body>

<h3>표현언어의 논리연산자</h3>
<table border="1" width="400">
	<tr>
		<th>표현식</th>
		<th>값</th>
	</tr>
	<tr><!-- 논리곱(and연산) -->
		<td>\${true && false}</td>
		<td>${true && false}</td>
	</tr>
	<tr><!-- 논리곱(and연산) -->
		<td>\${true and false}</td>
		<td>${true and false}</td>
	</tr>
	<tr><!-- 논리합(or연산) -->
		<td>\${false || true}</td>
		<td>${false || true}</td>
	</tr>
	<tr><!-- 논리합(or연산) -->
		<td>\${false or true}</td>
		<td>${false or true}</td>
	</tr>
	<tr><!-- 논리부정(not연산) -->
		<td>\${!true}</td>
		<td>${!true}</td>
	</tr>
	<tr><!-- 논리부정(not연산) -->
		<td>\${not true}</td>
		<td>${not true}</td>
	</tr>
</table>

</body>
</html>