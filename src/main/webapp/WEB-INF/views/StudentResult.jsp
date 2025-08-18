<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Search Result</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; color: #333; margin: 2rem; }
        .header { text-align: center; margin-bottom: 2rem; }
        h2 { color: #333; }
        h3 { color: #555; }
        table { width: 100%; border-collapse: collapse; margin-top: 1rem; background-color: #fff; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
        thead th { background-color: #007bff; color: white; }
        .back-link { display: inline-block; margin-top: 1.5rem; padding: 10px 15px; background-color: #007bff; color: white; text-decoration: none; border-radius: 4px; }
        .back-link:hover { background-color: #0056b3; }
        .dbe:hover { background-color: #0056b3; }
        .dbe {  display: inline-block; margin-top: 1.5rem; padding: 10px 15px; background-color: green; color: white; text-decoration: none; border-radius: 4px; }
    </style>
</head>
<body>
    <div class="header">
        <h2>Welcome, ${student1.name }</h2>
        <h3><%= new Date() %><br/></h3>
        <hr>
    </div>
    
    <table>
        <thead>
            <tr>
                <th>Student ID</th>
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
            <tr>
                <td>${student1.id }</td>
                <td>${student1.english }</td>
                <td>${student1.maths }</td>
                <td>${student1.hindi }</td>
                <td>${student1.computer }</td>
                <td>${student1.total }</td>
                <td>${student1.average }</td>
                <td>${student1.percentage }</td>
            </tr>
        </tbody>
    </table>
    <a href="studentView" class="back-link">Return to Home page</a>
     <a href="downloadStudentReportExcel?id=${student1.id}" class="dbe">Download Report (Excel)</a>
</body>
</html>