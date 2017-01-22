<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
          <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
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
<div class="container body-content">
  <ul class="nav nav-tabs">
    <li class="active"><a  data-toggle="tab" href="#home">Login As User</a></li>
    <li><a  data-toggle="tab"  href="#menu1">Edit Users</a></li>
    <li><a  data-toggle="tab" href="#menu2">Edit Catalog</a></li>
  </ul>
<div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <iframe  src="Llogin.jsp" width="100%" height="500" frameborder="0" allowfullscreen sandbox>
</iframe>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Edit Users</h3>
      <iframe  src="Login.jsp" width="100%" height="500" frameborder="0" allowfullscreen sandbox>
</iframe>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Edit Catalog</h3>
      <iframe  src="Login.jsp" width="100%" height="500" frameborder="0" allowfullscreen sandbox>
</iframe>
    </div>
    
  </div>
</div>

</body>
</html>