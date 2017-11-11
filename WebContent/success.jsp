<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String message = (String) request.getAttribute("loginMessage");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%=message == null ? "" : message%><br /> UserName:
	<%=request.getParameter("username")%><br /> Password:
	<%=request.getParameter("password")%><br />
	<a href="index.jsp">&lt;-Go back</a>
</body>
</html>