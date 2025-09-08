<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

String username = request.getParameter("un");
String newpassword = request.getParameter("newpwd");



try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudjsp", "root", "shubham");
	Statement statement = connection.createStatement();
	String query = "UPDATE `crudjsp`.`user` SET `password` = '"+ newpassword +"' WHERE (`name` = '"+ username +"');";
	statement.executeUpdate(query);
	
	response.sendRedirect("index.html");
}
catch(Exception e){
	System.out.println(e);
}







%>
</body>
</html>