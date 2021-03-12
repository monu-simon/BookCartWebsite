<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Book Name</th>
			<th>Author Name</th>
			<th>Price</th>
		</tr>
		<c:forEach var="tempBooks" items="${books }">

			<td>${tempBooks.bookName }</td>
			<td>${tempBooks.bookAuthor }</td>
			<td>${tempBooks.price }</td>

		</c:forEach>



	</table>
</body>
</html>