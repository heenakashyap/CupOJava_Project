<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/home.css" />
<%-- <link href="<c:url value="/static/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/static/js/bootstrap.min.js" />"></script> --%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <c:if test="${message != null }">
				<div class="alert alert-success" role="alert">${message}</div>
			 </c:if>
<p class="testclass">This should be blue here</p>
<p>Unordered list</p> --%>
<div class="headerClass">
<nav class="navClass">
<ul class="navUL">
<li class="navItem"><a class="navLink" href="/search">Find Route</a></li>
<!-- <li class="navItem"><a class="navLink" href="okaylol">Transit Schedules</a></li> -->
<li class="navItem"><a class="navLink" href="/transitSchedules">Transit Schedules</a></li>
<li class="navItem"><a class="navLink" href="">Fares</a></li>
<li class="navItem"><a class="navLink" href="">Service Changes</a></li>
<!-- <li class="navItem"><a href="/myAccount">My Account</a></li> -->
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
</body>
</html>