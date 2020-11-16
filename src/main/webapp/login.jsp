<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="/css/home.css">
</head>
<body>
<div class="headerClass">
<nav class="navClass">
<ul class="navUL">
<li class="navItem"><a class="navLink" href="okaylol">Transit Schedules</a></li>
<li class="navItem"><a class="navLink" href="">Fares</a></li>
<li class="navItem"><a class="navLink" href="">Service Changes</a></li>
<li class="navItem"><a class="navLink" href="">Sign in</a></li>
<li class="navItem"><a class="navLink" href="">Register</a></li>
</ul>
</nav>
</div>
<div>
	
	<form class="formClass" action="/loginProcess" method="post">
	<c:if test="${error !=null}">
			
			<div class="error">
			<p class="errorText">${error}</p>
			</div>
		
		</c:if>
	<input onclick="javascript: return false;" class="formItem" type="text" name="username" placeholder="Email or username"><br>
	<input class="formItem" type="password" name="password" placeholder="Password"><br>
	<input class="formItem loginButton" type="submit" value="Login">
</form>
</div>
<footer>
</footer>
</body>
</html>