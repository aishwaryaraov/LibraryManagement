<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body style="background-color: #FEFEFC;">
<div class="jumbotron" style="background-image: url(http://s3.amazonaws.com/FratMusic-Site-Images/assets/cover/1416846214-library1.jpg); background-size: 100% 100%;">
<span style="color: #ffffff"><h2><b>PICK FROM THE LIBRARY CATALOG...</b></h2></span>
</div>
<%
String name= request.getParameter("uname");
String pwd= request.getParameter("pword");
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
   Statement st = con.createStatement();
   String sql = ("SELECT * FROM users where username='"+name+"' and password='"+pwd+"';");

  
	   ResultSet rs=st.executeQuery(sql);
	   if(!(rs.next())){
		 	response.sendRedirect("Login.jsp");
		 
	   }
	   else{
	   while(rs.next()){
	   	String un = rs.getString(2);
	   	String pw = rs.getString(3);
	   	
	   	if(un.equals(name) && pw.equals(pwd))
	   		out.println("Welcome "+name+" !!");
	   
	   }
	   }

%>
<br/>
<center>
<%
Statement stmt = con.createStatement();
String sql_book = ("SELECT * FROM books;");
ResultSet rset=stmt.executeQuery(sql_book);
out.println("<div class = 'table-responsive'><table class = 'table table-striped' ><th>ID</th><th>Book</th><th>Author</th><th>Quantity</th>");
while(rset.next()){
	out.println("<tr><td>"+rset.getString(1)+"</td><td>"+rset.getString(2)+"</td><td>"+rset.getString(3)+"</td><td>"+rset.getString(4)+"</td></tr>");
}
out.println("</table></div>");

	    if (!con.isClosed()) {
con.close();
}
%>
<br/>
<form action="OrderBook.jsp" method="POST">
<table>
<tr>
<th>
Book ID:&nbsp;&nbsp;
</th>
<td>
<input type="text" class = "form-control" name="bookid">
</td>
</tr>
</table>
<br/>
<center><button type="submit" class = "btn btn-default btn-lg">Order </button></center>
</form>
</center>
</body>
</html>