<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="com.app.entity.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.center {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<center>
		<h1>Cart Details</h1>
	</center>
	<%
			Customer cus = (Customer) session.getAttribute("logindata");
			System.out.println(cus.getAddress());
			%>
	<h3 align="right" style="color: red">Welcome <%=cus.getName() %></h3>
	<form:form action="add" method="POST" modelAttribute="cart">
		<form:hidden path="bookId" value="${book.bookId }" />
		<table class="center">
			<tr>
				<td>Book Name</td>
				<td>${book.bookName }</td>

			</tr>
			<tr>

				<td>Author Name</td>
				<td>${book.bookAuthor }</td>


			</tr>
			<tr>

				<td>Price</td>
				<td>${book.price }</td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><form:input path="quantity" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Proceed"></td>
				<td><input type="button" value="Cancel"
					onclick="window.location.href='show';  return false;" /></td>
			</tr>

		</table>
	</form:form>

</body>
</html>