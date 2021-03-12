<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<center><h1>User Login</h1></center>
<form action="loginn" method="get">
		<table class="center">
			<tr>
				<td>Mobile No</td>
				<td><input type="text" name="username"></td>
				
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
		<!-- <input type="text" name="username"> <input type="text"
			name="password">  -->

	</form>
</body>
</html>