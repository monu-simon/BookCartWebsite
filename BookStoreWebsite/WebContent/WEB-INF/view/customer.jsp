<%@page import="com.app.entity.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.app.entity.Customer"%>


<!DOCTYPE html>
<html>
<head>
<style>
.center {
	margin-left: auto;
	margin-right: auto;
}
</style>
<script type="text/javascript">
if (document.contact_form.phone.value == "") {
	alert("Plz enter your phone no");
	return false;
}
</script>
<meta charset="ISO-8859-1">
<title>Shipping</title>
</head>
<body>
	<center>
		<h1>Shipping Address</h1>
	</center>

	<c:url var="confirm" value="/book/confirm">
		<c:param name="bookId" value="${book.bookId}"></c:param>
	</c:url>
	<form:form action="${confirm }" method="POST" modelAttribute="customer"
		onsubmit="return validation()" name="contact_form">
		<%-- <form:hidden path="customerId"  /> --%>
		<%-- <form:hidden path="orderId" /> --%>
		<form:hidden path="quantity" value="${cart.quantity}" />
		<%-- <form:hidden path="bookid" value="${book.bookId}" /> --%>
		<%-- <form:hidden path="book" value="${book}" /> --%>
		<%-- <form:hidden path="book" value=${book }/>
		<form:hidden path="date" />
		
		 --%>
		<table class="center">
			<%
			Customer cus = (Customer) session.getAttribute("logindata");
			System.out.println(cus.getAddress());
			%>
			<h3 align="right" style="color: red">Welcome <%=cus.getName() %></h3>
			<form:hidden path="customerId" value="<%=cus.getCustomerId()%>" />
			<form:hidden path="password" value="<%=cus.getPassword()%>" />
			<tr>
				<td>Customer Name</td>
				<td><form:input path="name" value="<%=cus.getName()%>" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<%-- <td><form:input path="address" /></td> --%>
				<td><form:input path="address" value="<%=cus.getAddress()%>" /></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><form:input path="phone" value="<%=cus.getPhone()%>" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="email" value="<%=cus.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>City</td>
				<td><form:input path="city" value="<%=cus.getCity()%>" /></td>
			</tr>
			<tr>
				<td>PinCode</td>
				<td><form:input path="pincode" value="<%=cus.getPincode()%>" /></td>
			</tr>

			<tr>
				<td><h2>Cart Details</h2></td>
			</tr>
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
				<td>${cart.quantity}</td>
			</tr>
			<tr>
				<td><input type="submit" value="Confirm"></td>
				<td><input type="button" value="Cancel"
					onclick="window.location.href='show';  return false;" /></td>
				<td></td>

			</tr>
		</table>
	</form:form>
</body>
</html>