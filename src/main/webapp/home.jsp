<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/home.css" />
<link href="<c:url value="/static/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/static/js/bootstrap.min.js" />"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<c:if test="${message != null }">
				<div class="alert alert-success" role="alert">${message}</div>
			 </c:if>
<p class="testclass">This should be blue here</p>
<p>Unordered list</p>
<nav>
<ul>
<li class="navItem"><a href="/transitSchedules">Transit Schedules</a></li>
<li class="navItem"><a href="">Fares</a></li>
<li class="navItem"><a href="">Service Changes</a></li>
<li class="navItem"><a href="/myAccount">My Account</a></li>
<li class="navItem"><a href="/register">Register</a></li>
</ul>
</nav>
</body>
</html>