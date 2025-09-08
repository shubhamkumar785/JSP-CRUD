<%@page import="java.sql.ResultSet"%>
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
int flag = 0;


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudjsp", "root", "shubham");
	Statement statement = connection.createStatement();
	ResultSet set = statement.executeQuery("SELECT * FROM user");
	while(set.next()){
		if(username.equals(set.getString(2)) && password.equals(set.getString(3))){
			flag = 1;
			session.setAttribute("username", username);
			break;
		}
	}
	if(flag == 1){
		response.sendRedirect("uppwd.jsp");
	}
	else{
		response.sendRedirect("index.html");
	}
	
}
catch(Exception e){
	System.out.println(e);
}







%>
</body>
</html>