<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Account</title>
<style>
body
{
background-color:yellow;
}
.avatar {
  vertical-align: middle;
  width: 50px;
  height: 50px;
  border-radius: 50%;
}
</style>
</head>
<body>
<br/><br/><br/>
<h1>
	My Account
	</h1>
	<img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
	<h3>
	${user}
	</h3>
</body>
</html>