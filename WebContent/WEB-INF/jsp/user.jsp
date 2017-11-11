<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Making spring related JSP -->
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" modelAttribute="user">
		<table>
			<tr>
				<td><form:label path="userName">UserName: </form:label></td>
				<td><form:input type="text" path="userName" id="userName"
						placeholder="Enter username" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password: </form:label></td>
				<td><form:password path="password" id="password"
						placeholder="Enter your password" /></td>
			</tr>
			<tr>
				<td><form:label path="age">Age: </form:label></td>
				<td><form:input type="number" path="age" id="age"
						placeholder="Enter your age" /></td>
			</tr>
			<tr>
				<td style="vertical-align: middle;">Gender:</td>
				<td><label for="male">
						<form:radiobutton path="gender" value="M" id="male" />Male</label><br />
					<label for="female">
						<form:radiobutton path="gender" value="F" id="female" />Female</label></td>
			</tr>
			<tr>
				<td><input type="submit" value="Insert" /></td>
				<td><a href="index.jsp">&lt;-Go back</a></td>
			</tr>
		</table>
	</form:form>
</body>
</html>