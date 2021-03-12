<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>User Registration</h2>
	<form:form action="saveUser" method="POST" modelAttribute="user">
		

		<table>
			<tr>
				<td>Phone No</td>
				<td><form:input path="mobileNo" /></td>
			</tr>

			<tr>
				<td>Password</td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td>City</td>
				<td><form:input path="city" /></td>
			</tr>
			<tr>
				<td>Pincode</td>
				<td><form:input path="pinCode" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register"></td>
				<td><input type="button" value="LogIn"
					onclick="window.location.href='login';  return false;" /></td>
			</tr>

		</table>
	</form:form>
</body>
</html>