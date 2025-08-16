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

<title>login</title>
</head>
<body>


	<div class="container text-center">
	<h5>Add Student</h5>
	<a class="btn btn-primary" href="add" role="button">Add</a>
	</div>
	
	<div class="container text-center">
	<h5>Update Student</h5>
	<a class="btn btn-primary" href="update" role="button">Update</a>
	</div>
	
	<div class="container text-center">
	<h5>Delete Student</h5>
	<a class="btn btn-primary" href="delete" role="button">Delete</a>
	</div>
	
	<div class="container text-center">
	<h5>Search Student</h5>
	<a class="btn btn-primary" href="search" role="button">Search</a>
	</div>
	
	<form action="allStudent" method="post">
	<div class="container text-center">
	<h5>All Student</h5>
	<a class="btn btn-primary" href="allStudent" role="button">All Student</a>
	</div>
	</form>
	
	

</body>
</html>