<%@page import="com.model.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport
	content=" width=device-width, initial-scale=1,
	shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Add Student</title>
</head>
<body>

	<div class="container mt-5">
	
	<form action="update" method="post">
	
	<div class="form-group">
		<label for="id">Id</label> <input type="text"
			class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter Id"
			name="id">
	</div>
	
	<div class="form-group">
			<label for="name">Name</label> <input type="text"
				class="form-control" id="password" aria-describedby="emailHelp"
				placeholder="Enter Name" name="name">
		</div>

		<div class="form-group">
			<label for="english">English Marks</label> <input type="text"
				class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Enter Marks"
				name="english">
		</div>

		<div class="form-group">
			<label for="hinid">Hindi Marks</label> <input type="text"
				class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Enter Marks"
				name="hindi">
		</div>

	<div class="form-group">
		<label for="maths">Maths Marks</label> <input type="text"
			class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter Marks" name="maths">
	</div>
	<div class="form-group">
		<label for="computer">Computer Marks</label> <input type="text"
			class="form-control" id="exampleInputEmail1"
			aria-describedby="emailHelp" placeholder="Enter Marks"
			name="computer">
	</div>

	<div class="form-group text-center">
		<button type="submit" class="btn btn-success">Submit</button>

	</div>

	<div class="container text-center">
		<a  href="home" role="button">Back To Home Page</a>
	</div>

	</form>
	</div>

</body>
</html>
