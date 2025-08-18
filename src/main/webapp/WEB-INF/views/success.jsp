<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Success</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; margin: 0; display: flex; justify-content: center; align-items: center; min-height: 100vh; text-align: center; }
        .container { background-color: #fff; padding: 2rem; border-radius: 8px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); width: 100%; max-width: 400px; }
        h3 { color: #28a745; }
    </style>
</head>
<body>
<div>
<h3>Your Name is ${user.userName }</h3>
<h3>Your Email is ${user.email }</h3>
<h3>Your Password is ****.. Restricted!!</h3>

</div>>
    <div class="container">
        <h3>${msg}</h3>
    </div>
</body>
</html>