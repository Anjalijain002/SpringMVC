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

	<div class="container mt-5">

		<form action="login" method="post">
		 <div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="email" class="form-control" id="exampleInputEmail1"
					 aria-describedby="emailHelp" placeholder="Enter email" name="email" required="required">
			</div>


			<div class="form-group">
				<label for="userName">Password</label> <input type="password"
					class="form-control" id="password" aria-describedby="emailHelp"
					placeholder="Enter password" name="password" required="required">
			</div>
			<div class="form-group">
			<b><label>Login As</label></b>
			   <select name="role">
			       <option value="Admin">Admin</option>
			       <option value="Student">Student</option>
			   </select>
			</div>
			

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Login</button>
                <!--  <a href="register">Register Here</a> -->

			</div>

			 <div class="container text-center">
				<h5>New User?</h5>
				<a class="btn btn-primary" href="register" role="button">Register
					Here</a>
			</div>
			
		</form>
	</div>

</body>
</html>
