<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #FEFEFC;">
<%
String name= request.getParameter("uname");
String pwd= request.getParameter("pass");
String driver = "com.mysql.jdbc.Driver";  
String connection = "jdbc:mysql://localhost/emp";
String user = "root";
 String password = "P@ssw0rd";
 
 Class.forName(driver);
 
 Connection con = DriverManager.getConnection(connection, user, password);
 /*String query = "insert into users (username, password) values (?, ?)";
 PreparedStatement preparedStmt = con.prepareStatement(query);
   preparedStmt.setString (1,name);
   preparedStmt.setString (2, pwd);
   preparedStmt.executeUpdate();
   */
  // Statement st = con.createStatement();
   String sql = "INSERT INTO users(username,password) " + "VALUES (?,?)";
     
//	  int i=st.executeUpdate(sql);
	  PreparedStatement preparedStmt = con.prepareStatement(sql);
      preparedStmt.setString (1, name);
      preparedStmt.setString (2, pwd);
      int b=preparedStmt.executeUpdate();
      System.out.println(b);
	   if(b>0){
		 	response.sendRedirect("Login.jsp");
		 
	   }
	   else{
		   response.sendRedirect("Register.jsp");
	   }
	   

	    if (!con.isClosed()) {
con.close();
}

%>
</body>
</html>