<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.app.entity.Customer"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping</title>
<style>
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>
<body>
	<center><h1>Book Available</h1></center>
	<%
			Customer cus = (Customer) session.getAttribute("logindata");
			System.out.println(cus.getAddress());
			%>
	<h3 align="right" style="color: red">Welcome <%=cus.getName() %></h3>
	<table class="center">
		<tr>
			<th>Book Name</th>
			<th>Author Name</th>
			<th>Price</th>
		</tr>
		<c:forEach var="tempBooks" items="${books }">
			<c:url var="proceed" value="/book/purchase">
				<c:param name="bookId" value="${tempBooks.bookId}"></c:param>
			</c:url>
			<%-- <td>${tempBooks.bookName }</td> --%>
<tr>
			<td><a href="${proceed}">${tempBooks.bookName }</a></td>
			<td>${tempBooks.bookAuthor }</td>
			<td>${tempBooks.price }</td>

			</tr>

		</c:forEach>



	</table>
</body>
</html>