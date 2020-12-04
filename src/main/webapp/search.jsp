<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/home.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Register</title>
<style>
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: lightblue;  
}  
.container {  
    padding: 10px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], input[type=select], textarea, select {  
  width: 80%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>
</head>
<body>
<div class="headerClass">
<nav class="navClass">
<ul class="navUL">
<li class="navItem"><a class="navLink" href="/search">Find Route</a></li>
<!-- <li class="navItem"><a class="navLink" href="okaylol">Transit Schedules</a></li> -->
<li class="navItem"><a class="navLink" href="/transitSchedules">Transit Schedules</a></li>
<li class="navItem"><a class="navLink" href="">Fares</a></li>
<li class="navItem"><a class="navLink" href="">Service Changes</a></li>
<li class="navItem"><a class="navLink" href="/login">Sign in</a></li>
<li class="navItem"><a class="navLink" href="/register">Register</a></li>
</ul>
</nav> 
	<c:if test="${loggedIn == true}">
			
		<nav class="navClass">
		<ul class="navUL">
		<li class="navItem"><p class="navlink">Signed in as ${username}</p></li>
		<li class="navItem-account"><a class="navLink" href="accountSettings?id=${id}">My Account</a></li>
		<li class="navItem-account"><a class="navLink" href="/logout">Sign Out</a></li>
</ul>
</nav>
		
	</c:if>

</div>

<div class="container">
<form action="/search" method="post">
  <div>
    <h1>Find Route</h1>
    <p>Please Select Details</p>
</div>
<div style="width:40%;float:left;">
	<label for="origin"><b>Route</b></label>
  	<br>
  	<input type="text" name="search" placeholder="Search Routes">
    <br>
  </div>
  <div style="width:40%;float:left;">
  	<label for="origin"><b>Filter by vehicle</b></label>
  	<br>
    <select name="type" id="type">
		<option value="">Not Specified</option>
		<option value="bus">Bus</option>
		<option value="train">Train</option>
		<option value="ferry">Ferry</option>
	</select>
    <br>
  </div>
  <div class="" style="width:20%;float:left;">
  <br>
    <button type="submit" class="registerbtn"><i class="fa fa-search"></i> Find Route</button>
  </div>
</form>
</div>
<div class="container">
  <div>
    <h3>Test right</h3>
    <table class="table">
		<c:forEach var="route" items="${routeList}">
			<tr>
				 <td class="searchrow"> ${route.routeType}</td>
				<td class="searchrow">Route: ${route.id}</td>
				<td class="searchrow">To: ${route.destination}</td>
				<td class="searchrow">To: ${route.origin}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</div>
</body>
</html>