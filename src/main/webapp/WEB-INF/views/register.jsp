<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Register</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; margin: 0; display: flex; justify-content: center; align-items: center; min-height: 100vh; }
        .container { background-color: #fff; padding: 2rem; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); width: 100%; max-width: 400px; }
        h3 { text-align: center; color: #555; }
        .form-group { margin-bottom: 1rem; }
        label { display: block; margin-bottom: 0.5rem; font-weight: bold; }
        input[type="email"], input[type="text"], input[type="password"] { width: 100%; padding: 0.75rem; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .btn-success { display: block; width: 100%; padding: 0.75rem; border: none; border-radius: 4px; background-color: #28a745; color: white; font-size: 1rem; cursor: pointer; transition: background-color 0.3s ease; }
        .btn-success:hover { background-color: #218838; }
    </style>
</head>
<body>
    <div class="container">
        <form action="processform" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" id="exampleInputEmail1" placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
                <label for="userName">Name</label>
                <input type="text" id="userName" placeholder="Enter Name" name="userName">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter password" name="password">
            </div>
            <div class="form-group">
                <button type="submit" class="btn-success">Sign Up</button>
            </div>
        </form>
    </div>
</body>
</html>