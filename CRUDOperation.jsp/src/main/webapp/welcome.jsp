<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String un = session.getAttribute("username").toString();
out.println("Welcome " + un);
%>



<form action="uppwd.jsp">
username<input type="text" name="un">
New Password <input type="password" name="newpassword">
<input type="submit" name ="UpdatePassword">
</form>
</body>
</html>