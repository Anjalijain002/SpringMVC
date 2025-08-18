<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Delete Student</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; margin: 0; display: flex; justify-content: center; align-items: center; min-height: 100vh; }
        .container { background-color: #fff; padding: 2rem; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); width: 100%; max-width: 400px; text-align: center; }
        h3 { color: green; margin-bottom: 2rem; }
        .form-group { margin-bottom: 1rem; text-align: left; }
        label { display: block; margin-bottom: 0.5rem; font-weight: bold; }
        input[type="text"] { width: 100%; padding: 0.75rem; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .btn-success { display: block; width: 100%; padding: 0.75rem; border: none; border-radius: 4px; background-color: #dc3545; color: white; font-size: 1rem; cursor: pointer; transition: background-color 0.3s ease; }
        .btn-success:hover { background-color: #c82333; }
        .back-link { display: block; text-align: center; margin-top: 1.5rem; color: #007bff; text-decoration: none; }
        .back-link:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="container">
        <h3>Delete Student</h3>
        <form action="delete" method="post">
            <div class="form-group">
                <label for="id">Id</label>
                <input type="text" id="id" placeholder="Enter Id" name="id">
            </div>
            <div class="form-group">
                <button type="submit" class="btn-success">Delete</button>
            </div>
        </form>
        <a class="back-link" href="home">Back To Home Page</a>
    </div>
</body>
</html>