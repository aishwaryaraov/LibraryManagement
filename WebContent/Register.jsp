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




  <div class="jumbotron" style="background-image: url(http://s3.amazonaws.com/FratMusic-Site-Images/assets/cover/1416846214-library1.jpg); background-size: 100% 100%;">
<center><span style="color: #ffffff"><h1><b>LIBRARY MANAGEMENT SYSTEM</b></h1>

<b><p>Register Here...</p></b></span></center>
</div>

<form action="Reg.jsp" method="POST">

<b>UserName </b>

<input type="text" class = "form-control" name="uname">
<br/><br/>
<b>Password</b> 

<input type="password" class = "form-control" name="pass">
<br/>
<center><button type="submit" class = "btn btn-default btn-lg">Register </button></center>
</form>

</body>
</html>