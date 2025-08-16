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

<title>Search</title>
</head>
<body>

	<div class="container mt-5">

		<form action="searchStudent" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Student ID</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter ID" name="id">
			</div>


			<div class="container text-center">
				<button type="submit" class="btn btn-success">Search</button>


			</div>


		</form>
	</div>

</body>
</html>
