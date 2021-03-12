<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
function validation() {
	if (document.contact_form.phone.value == "") {
		alert("Plz enter your Phone No");
		return false;
	}
	if (document.contact_form.phone.value.length <10) {
		alert("Plz enter proper Phone No");
		return false;
	}
	if (document.contact_form.name.value == "") {
		alert("Plz enter your Name");
		return false;
	}
	if (document.contact_form.address.value == "") {
		alert("Plz enter your Address");
		return false;
	}
	if (document.contact_form.city.value == "") {
		alert("Plz enter your City");
		return false;
	}
	if (document.contact_form.email.value == "") {
		alert("Plz enter your Email");
		return false;
	}
	if (document.contact_form.pincode.value == "") {
		alert("Plz enter your Pincode");
		return false;
	}
	if (document.contact_form.pincode.value.length <6) {
		alert("Enter proper pinCode");
		return false;
	}
	if (document.contact_form.password.value.length <6) {
		alert("Plz enter password with 7 characters");
		return false;
	}
	var x=document.contact_form.email.value;  
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if (!filter.test(x)) {
	alert("Enter a valiid email");
	return false;  
	}
	
	
	
}
</script>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<center><h1>User Registration</h1></center>
	<form:form action="saveUser" method="POST" modelAttribute="customer" onsubmit="return validation()" name="contact_form">


		<table class="center">
		<tr>
				<td>Name</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Phone No</td>
				<td><form:input path="phone" /></td>
			</tr>

			<tr>
				<td>Address</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td>City</td>
				<td><form:input path="city" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>PinCode</td>
				<td><form:input path="pincode" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="SignUp"></td>
				<td><input type="button" value="SignIn"
					onclick="window.location.href='login';  return false;" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>