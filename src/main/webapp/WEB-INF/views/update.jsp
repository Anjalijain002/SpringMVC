<%@page import="com.model.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Update Student</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; margin: 0; display: flex; justify-content: center; align-items: center; min-height: 100vh; }
        .container { background-color: #fff; padding: 2rem; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); width: 100%; max-width: 500px; }
        h2 { text-align: center; color: #333; margin-bottom: 2rem; }
        .form-group { margin-bottom: 1rem; }
        label { display: block; margin-bottom: 0.5rem; font-weight: bold; }
        input[type="text"] { width: 100%; padding: 0.75rem; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .btn-success { display: block; width: 100%; padding: 0.75rem; border: none; border-radius: 4px; background-color: #ffc107; color: #333; font-size: 1rem; cursor: pointer; transition: background-color 0.3s ease; }
        .btn-success:hover { background-color: #e0a800; }
        .back-link { display: block; text-align: center; margin-top: 1.5rem; color: #007bff; text-decoration: none; }
        .back-link:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Student</h2>
        <form action="update" method="post">
            <div class="form-group">
                <label for="id">Id</label>
                <input type="text" id="exampleInputEmail1" placeholder="Enter Id" name="id">
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="password" placeholder="Enter Name" name="name">
            </div>
            <div class="form-group">
                <label for="english">English Marks</label>
                <input type="text" id="exampleInputEmail1" placeholder="Enter Marks" name="english">
            </div>
            <div class="form-group">
                <label for="hindi">Hindi Marks</label>
                <input type="text" id="exampleInputEmail1" placeholder="Enter Marks" name="hindi">
            </div>
            <div class="form-group">
                <label for="maths">Maths Marks</label>
                <input type="text" id="exampleInputEmail1" placeholder="Enter Marks" name="maths">
            </div>
            <div class="form-group">
                <label for="computer">Computer Marks</label>
                <input type="text" id="exampleInputEmail1" placeholder="Enter Marks" name="computer">
            </div>
            <div class="form-group">
                <button type="submit" class="btn-success">Submit</button>
            </div>
        </form>
        <a class="back-link" href="home">Back To Home Page</a>
    </div>
</body>
</html>