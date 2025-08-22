<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Student Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background: #f4f6f9;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .hero-section {
            background: linear-gradient(135deg, #28a745, #218838);
            color: white;
            padding: 4rem 2rem;
            text-align: center;
            border-radius: 0 0 40px 40px;
            margin-bottom: 2rem;
        }
        .hero-section h1 {
            font-size: 2.2rem;
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
            background: linear-gradient(135deg, #28a745, #218838);
            color: white;
            border: none;
        }
        .btn-custom:hover {
            background: linear-gradient(135deg, #218838, #19692c);
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" href="#">Student Panel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="profile"><i class="bi bi-person-circle"></i> Profile</a></li>
                    <li class="nav-item"><a class="nav-link" href="settings"><i class="bi bi-gear"></i> Settings</a></li>
                    <li class="nav-item"><a class="nav-link text-danger" href="logout"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero / Landing -->
    <section class="hero-section">
        <h1>Welcome Student</h1>
        <p class="lead">Access your details and manage your student profile.</p>
    </section>

    <!-- Student Dashboard -->
    <div class="container my-5">
        <div class="row g-4 justify-content-center">

            <!-- Search Student -->
            <div class="col-md-4">
                <div class="card text-center p-4">
                    <i class="bi bi-search display-4 text-success mb-3"></i>
                    <h5>Search Student</h5>
                    <a href="searchStudentById" class="btn btn-custom mt-2">Search</a>
                </div>
            </div>

            <!-- 
            <div class="col-md-4">
                <div class="card text-center p-4">
                    <i class="bi bi-person-badge display-4 text-success mb-3"></i>
                    <h5>View Profile</h5>
                    <a href="profile" class="btn btn-custom mt-2">View</a>
                </div>
            </div>
            View Profile -->

            <!-- 
            <div class="col-md-4">
                <div class="card text-center p-4">
                    <i class="bi bi-card-checklist display-4 text-success mb-3"></i>
                    <h5>View Results</h5>
                    <a href="results" class="btn btn-custom mt-2">Check</a>
                </div>
            </div>
            View Results -->

        </div>
    </div>

    <!-- Footer -->
    <footer class="text-center py-3 bg-light mt-auto border-top">
        <p class="mb-0">© 2025 Student Management System | Student Dashboard</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
