<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생등록</title>
</head>
<body>

<h3>학생 등록</h3>

<form method="get" action="studentList.jsp">
	학번 : <input type="text" name="no"> <br>
	이름 : <input type="text" name="name"> <br>
	전공 : <input type="text" name="major"> <br>
	학년 : <input type="text" name="grade"> <br>
	E-Mail : <input type="text" name="email"> <br>
	연락처 : <input type="text" name="phone"> <br>
	주소 : <input type="text" name="address"> <br>
	<input type="submit" value="등록">
</form>

</body>
</html>