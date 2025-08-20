<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home Page</title>
    <style>
        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e3f2fd, #ffffff);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            padding: 2rem 1rem;
        }
        .wrapper {
    max-width: 320px;   /* narrower column */
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 1rem;          /* smaller gap */
}

.container {
    background: #fff;
    padding: 1rem 1rem;  /* reduced padding */
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.08);
    text-align: center;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.container:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 12px rgba(0,0,0,0.12);
}

h5 {
    color: #333;
    font-size: 1rem;   /* smaller title */
    margin-bottom: 0.75rem;
}

.btn-primary, 
button.btn-primary {
    display: block;
    width: 100%;
    padding: 0.5rem;   /* smaller button height */
    border: none;
    border-radius: 6px;
    background: linear-gradient(135deg, #007bff, #0056b3);
    color: #fff;
    text-decoration: none;
    font-size: 0.9rem;  /* slightly smaller text */
    font-weight: 500;
    cursor: pointer;
    text-align: center;
    box-sizing: border-box;
    transition: background 0.3s ease;
}

.btn-primary:hover, 
button.btn-primary:hover {
    background: linear-gradient(135deg, #0056b3, #003f7f);
}
        
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="container action-link">
            <h5>Add Student</h5>
            <a class="btn-primary" href="add1">Add</a>
        </div>
        <div class="container action-link">
            <h5>Update Student</h5>
            <a class="btn-primary" href="UpdateStudent">Update</a>
        </div>
        <div class="container action-link">
            <h5>Delete Student</h5>
            <a class="btn-primary" href="delete">Delete</a>
        </div>
        <div class="container action-link">
            <h5>Search Student</h5>
            <a class="btn-primary" href="search">Search</a>
        </div>
        <div class="container">
            <h5>All Student</h5>
            <form action="allStudent" method="post">
                <button type="submit" class="btn-primary">All Student</button>
            </form>
        </div>
    </div>
</body>
</html>
