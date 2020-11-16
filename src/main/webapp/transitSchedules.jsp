<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
    padding: 50px;  
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
<div class="container">
<form action="/getOrigDesDetails">
  <div>
    <h1>Transit Schedules</h1>
    <p>Please Select Origin-Destination:</p>
</div>
<div style="width:40%;float:left;">
	<label for="origin"><b>Route</b></label>
  	<br>
    <select id="origin" name="origin" required="required">
    <option value="">Select Origin-Destination</option>
    <c:forEach items="${origList }" var="ol">
    <option value="${ol.id}">${ol.origin} - ${ol.destination}</option>
    </c:forEach>
    </select>   
    <br>
  </div>
<%-- <div class="" style="width:40%;float:left;">
    <label for="destination"><b>Destination</b></label>
    <br>
    <select id="destination" name="destination" >
    <option value="">Select Destination</option>
    <c:forEach items="${origList }" var="ol">
    <option value="${ol.id}">${ol.destination}</option>
    </c:forEach>
    </select>   
    <br>
  </div> --%>
  <div class="" style="width:20%;float:left;">
  <br>
    <button type="submit" class="registerbtn">Get Details</button>
  </div>
</form>
</div>

<c:if test="${routeInfo eq true}">
<div class="container">
  <div>
    <h1>Route Information</h1>
    <table class="table">
    <thead>
    <tr><td>Origin - Destination</td><td>No of stops</td><td>Time to reach</td><td>Stop Details</td></tr>
    </thead>
    <tbody>
    <c:forEach items="${routeDetailsList }" var="rt">
    <tr><td><c:out value="${route.origin}"/> - <c:out value="${route.destination}"/></td><td>${rt.noofstops}</td><td>${rt.time}</td><td>${rt.stops}</td></tr>
    </c:forEach>
    </tbody>
    </table>
</div>
</div>
<script>
document.getElementById("origin").value = '<c:out value="${origin}"/>';
//document.getElementById("destination").value = '<c:out value="${destination}"/>';
</script>
</c:if>  
</body>
</html>
