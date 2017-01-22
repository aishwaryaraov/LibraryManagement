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
<div >
<span style="color: #0ace8d">
<%
String bid= request.getParameter("bookid");
String authorname= request.getParameter("auth");
String driver = "com.mysql.jdbc.Driver";  
String connection = "jdbc:mysql://localhost/emp";
String user = "root";
 String password = "P@ssw0rd";
 
 Class.forName(driver);
 
 Connection con = DriverManager.getConnection(connection, user, password);
 Statement st = con.createStatement();
 
 

	 String update_sql = "update books set quantity=quantity-1 where book_id="+bid+";";
	 
	 int i=st.executeUpdate(update_sql);
	 String sql = ("SELECT * FROM books where book_id="+bid+";");
	 ResultSet rs = st.executeQuery(sql);
	while(rs.next()){
		if(rs.getInt(4)<=-1){
			out.println("<br/><br/><center><p class='text-success'><h2><b>out of stock!!</b></h2></p></center>");
		}
		else{
			
			out.println("<br/><br/><center><p class='text-success'><h2><b>order placed successfully!!</b></h2></p></center>");
						
		}
	}
 
 

	    if (!con.isClosed()) {
con.close();
}
%>
<br/>
<br/>
<center>
<a href="Login.jsp"><b>Logout</b></a></center>
</span>
</div>
</body>

</html>