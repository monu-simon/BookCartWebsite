<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.app.entity.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Sopping Cart for Book Store</h2>
	<%
	Customer cus = (Customer) session.getAttribute("logindata");
	System.out.println(cus.getAddress());
	%>
	<h3 align="right" style="color: red">
		Welcome
		<%=cus.getName()%></h3>
	<p>Your order has been confirmed. The Books shall be delivered
		within 2 days</p>
	<form action="logout" method="get">
		<input type="submit" value="Logout" />
	</form>

</body>
</html>