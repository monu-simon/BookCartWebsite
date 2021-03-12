<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <% response.sendRedirect("book/show"); %> --%>
<center><h1>Welcome to Book Store</h1></center>
<center>
<input type="button" value="Sign In"
		onclick="window.location.href='book/login';  return false;" />
	<input type="button" value="Sign Up"
		onclick="window.location.href='book/register';  return false;" />
</center>
</body>
</html>