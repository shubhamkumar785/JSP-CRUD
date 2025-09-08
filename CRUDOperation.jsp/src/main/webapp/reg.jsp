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
String password = request.getParameter("pwd");
String address = request.getParameter("add");
String mobile = request.getParameter("mob");


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudjsp", "root", "shubham");
	Statement statement = connection.createStatement();
	String query = "INSERT INTO `user` (`name`, `password`, `address`, `mobile`) VALUES ('"+username+"', '"+password+"', '"+address+"', '"+mobile+"')";
	statement.executeUpdate(query);
	
	response.sendRedirect("index.html");
}
catch(Exception e){
	System.out.println(e);
}







%>
</body>
</html>