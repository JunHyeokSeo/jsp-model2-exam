<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>   

<jsp:useBean id="student" class="model.Student"/> 
<jsp:setProperty property="*" name="student"/>

<h3>getProperty 액션태그로 출력</h3>
학번 : <jsp:getProperty property="no" name="student"/><br>
이름 : <jsp:getProperty property="name" name="student"/><br>
전공 : <jsp:getProperty property="major" name="student"/><br>
학년 : <jsp:getProperty property="grade" name="student"/><br>
E-Mail : <jsp:getProperty property="email" name="student"/><br>
연락처 : <jsp:getProperty property="phone" name="student"/><br>
주소 : <jsp:getProperty property="address" name="student"/><br><br>

<h3>표현식 태그로 출력</h3>
학번 : <%=student.getNo() %><br>
이름 : <%=student.getName() %><br>
전공 : <%=student.getMajor() %><br>
학년 : <%=student.getGrade() %><br>
E-Mail : <%=student.getEmail() %><br>
연락처 : <%=student.getPhone() %><br>
주소 : <%=student.getAddress() %><br><br>

<h3>표현언어(EL)로 출력</h3>
학번 : ${student.no }<br>
이름 : ${student.name }<br>
전공 : ${student.major }<br>
학년 : ${student.grade }<br>
E-Mail : ${student.email }<br>
연락처 : ${student.phone }<br>
주소 : ${student.address }<br>
