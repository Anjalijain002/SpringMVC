<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.model.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Students</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; color: #333; margin: 2rem; }
        .header { text-align: center; margin-bottom: 2rem; }
        h1 { color: #333; }
        h3 { color: #555; }
        table { width: 100%; border-collapse: collapse; margin-top: 1rem; background-color: #fff; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
        thead th { background-color: #007bff; color: white; }
        tbody tr:hover { background-color: #f1f1f1; }
        .back-link { display: inline-block; margin-top: 1.5rem; padding: 10px 15px; background-color: #007bff; color: white; text-decoration: none; border-radius: 4px; }
        .back-link:hover { background-color: #0056b3; }
    </style>
</head>
<body>
    <div class="header">
        <h1>All Students</h1>
        <h3>Welcome Admin :)</h3>
        <h3><%= new Date() %><br/></h3>
    </div>
    
    <table>
        <thead>
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>English</th>
                <th>Maths</th>
                <th>Hindi</th>
                <th>Computer</th>
                <th>Total</th>
                <th>Average</th>
                <th>Percentage</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">  
                <tr>
                    <td>${student.id }</td>
                    <td>${student.name }</td>
                    <td>${student.english }</td>
                    <td>${student.maths }</td>
                    <td>${student.hindi }</td>
                    <td>${student.computer }</td>
                    <td>${student.total }</td>
                    <td>${student.average }</td>
                    <td>${student.percentage }</td>
                </tr>
            </c:forEach> 
        </tbody>
    </table>
    <div class="container text-center">
        <a class="back-link" href="home">Back To Home Page</a>
    </div>
</body>
</html>