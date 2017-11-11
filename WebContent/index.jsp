<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String message = (String) request.getAttribute("loginMessage");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
	<h3 style="color: red"><%=message == null ? "" : message%></h3>
	<form action="LoginServlet" method="post">
		<table border="0">
			<tr>
				<td><label for="username"> User Name </label></td>
				<td><input type="text" name="username"
					placeholder="Enter your username" id="username" /></td>
			</tr>
			<tr>
				<td><label for="password"> Password </label></td>
				<td><input type="password" name="password"
					placeholder="Enter your password" id="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login" /></td>
				<td><a href="UserRegistration.html">Register -&gt;</a>
			</tr>
		</table>
	</form>
</body>
</html>