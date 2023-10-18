<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8");%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 예제</title>
</head>
<body>

<h3>파라미터값 전달</h3>

<form method="post" action="el_ex5.jsp">
	이름 : <input type="text" name="name">
          <input type="submit" value="확인">
</form>
<br><br>

이름 : ${param.name } <br>
이름 : ${param['name']} <br>

</body>
</html>