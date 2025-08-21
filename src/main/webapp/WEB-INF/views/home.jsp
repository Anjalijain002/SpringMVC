<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f4f6f9;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .hero-section {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            padding: 4rem 2rem;
            text-align: center;
            border-radius: 0 0 40px 40px;
            margin-bottom: 2rem;
        }
        .hero-section h1 {
            font-size: 2.5rem;
            font-weight: bold;
        }
        .card {
            transition: transform 0.3s, box-shadow 0.3s;
            border: none;
            border-radius: 12px;
        }
        .card:hover {
            transform: translateY(-6px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }
        .btn-custom {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            border: none;
        }
        .btn-custom:hover {
            background: linear-gradient(135deg, #0056b3, #003f7f);
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="#">Admin Panel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="profile">Profile</a></li>
                    <li class="nav-item"><a class="nav-link" href="settings">Settings</a></li>
                    <li class="nav-item"><a class="nav-link text-danger" href="/">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero / Landing -->
    <section class="hero-section">
        <h1>Welcome, Admin</h1>
        <p class="lead">Manage students efficiently with your admin dashboard.</p>
    </section>

    <!-- Dashboard Content -->
    <div class="container my-5">
        <div class="row g-4">

            <div class="col-md-4">
                <div class="card text-center p-3">
                    <h5>Add Student</h5>
                    <a href="add1" class="btn btn-custom mt-2">Add</a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-center p-3">
                    <h5>Update Student</h5>
                    <a href="UpdateStudent" class="btn btn-custom mt-2">Update</a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-center p-3">
                    <h5>Delete Student</h5>
                    <a href="delete" class="btn btn-custom mt-2">Delete</a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-center p-3">
                    <h5>Search Student</h5>
                    <a href="search" class="btn btn-custom mt-2">Search</a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-center p-3">
                    <h5>All Students</h5>
                    <form action="allStudent" method="post">
                        <button type="submit" class="btn btn-custom mt-2">View</button>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <!-- Footer -->
    <footer class="text-center py-3 bg-light mt-auto border-top">
        <p class="mb-0">© 2025 Student Management System | Admin Dashboard</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
