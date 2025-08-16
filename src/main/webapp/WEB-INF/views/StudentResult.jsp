<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>StudentSearch</title>
</head>
<body>
<h3> <%= new Date() %><br/></h3>
<hr>
<h2> Welcome, ${student1.name }</h2>


 <table border="1">
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
                <tbody>
                   <tr>
                    <td> ${student1.id } </td>
                    <td>${student1.english }</td>
                    <td>${student1.maths }</td>
                    <td>${student1.hindi }</td>
                    <td>${student1.computer }</td>
                    <td>${student1.total }</td>
                    <td>${student1.average }</td>
                    <td>${student1.percentage }</td>
                </tr>
            </thead>
            <tbody>
           </table>
           <a href="studentView">Return to Home page</a>


</body>
</html>