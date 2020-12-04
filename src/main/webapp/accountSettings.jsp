<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: lightblue;  
}  
.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], input[type=date], textarea {  
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
<div class="container">
<form method="POST" action="/updateUser?id=${transitUser.id}">
  <div>
    <h1>User Register</h1>
    <p>Please enter the following details:</p>
</div>
<div style="width:50%;float:left;">

	<label for="firstName"><b>FirstName</b></label>
  <br>
    <input type="text" placeholder="Enter Your FirstName" name="firstName" id="firstName" value="${transitUser.firstName}" required>
    
    <br><br>
    
    <label for="username"><b>Username</b></label>
    <br>
    <input type="text" placeholder="Enter username" name="username1" id="username" value="${transitUser.username}" required  disabled="disabled">
    <input type="hidden" name="username" value="${transitUser.username }">
  
    <br><br>
    
     <label for="email"><b>Email</b></label>
     <br>
    <input type="text" placeholder="Enter Your Email" name="email" id="email" value="${transitUser.email}" required>
    
    <br><br>
    
     <label for="city"><b>City</b></label>
     <br>
    <input type="text" placeholder="Enter Your City" name="city" id="city" value="${transitUser.city}" required>

    <br><br>
    
    <label for="dob"><b>PDOB</b></label>
    <br>
    <input type="date" placeholder="Enter your DOB" name="dob" id="dob" value="${transitUser.dob}" required>
    <br><br>
    
  </div>


<div class="" style="width:50%;float:left;">
    <label for="lastName"><b>LastName</b></label>
    <br>
    <input type="text" placeholder="Enter Your LastName" name="lastName" id="lastName" value="${transitUser.lastName}" required>

	<br><br>  
    <label for="psw"><b>Password</b></label>
    <br>
    <input type="password" placeholder="Enter Password" name="password" id="psw" value="${transitUser.password}" required>
	<br><br>

     <label for="address"><b>Address</b></label>
     <br>
    <input type="text" placeholder="Enter Your Address" name="address" id="address" value="${transitUser.address}" required>
    <br><br>
      <label for="phoneNo"><b>Phone No</b></label>
      <br>
    <input type="text" placeholder="Enter your PhoneNumber" name="phoneNo" id="phoneNo" value="${transitUser.phoneNo}" required>
<br><br>
  </div>
  <div class="" style="width:100%;float:left;">
    <button type="submit" class="registerbtn">Update</button>
  </div>

</form>
</div>  
</body>
</html>
