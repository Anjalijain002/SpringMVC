<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.model.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Students</title>
</head>
<body>
<h3>Welcome Admin :)</h3>
<h3> <%= new Date() %><br/></h3>

<hr>
<h3>All Students</h3>

 <table border="1">
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
                    <td>${student.id } </td>
                    <td>${student.name } </td>
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
				<a  href="home" role="button">Back To
					Home Page</a>
			</div>

</body>
</html>