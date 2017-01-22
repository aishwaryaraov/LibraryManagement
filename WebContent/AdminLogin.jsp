<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<center>

  <div class="jumbotron" style="background-image: url(http://s3.amazonaws.com/FratMusic-Site-Images/assets/cover/1416846214-library1.jpg); background-size: 100% 100%;">
<span style="color: #ffffff"><h1><b>LIBRARY MANAGEMENT SYSTEM</b></h1>
<b><p>Please login to browse books</p></b></span>
</div>
</center>
<br/><br/>
<form action="AdminAction.jsp" method="POST">
<b>Adminname:</b> <input type="text" class = "form-control"  name="uname"><br/>
<b>Password:</b> <input type="password" class = "form-control" name="pword"/><br/>
<br/>
<center><button type="submit" class = "btn btn-default btn-lg">Log In </button>&nbsp;&nbsp;

</center>
<br/>
<br/>
<a href="Register.jsp"><b>Register Here</b></a>

</form>

</body>
</html>