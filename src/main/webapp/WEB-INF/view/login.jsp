<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - BookStore</title>

    <!-- Bootstrap CSS (CDN) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Make the navbar sticky at the top */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            background-color: #fff; /* Optional: Ensure navbar is visible */
        }

        /* Add padding to the body so that the content doesn't get hidden under the navbar */
        body {
            padding-top: 70px; /* Adjust based on navbar height */
            margin: 0;
            height: 90%;
        }

        /* Ensure the main content takes at least full height of the viewport */
        .main-content {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(90vh - 70px); /* Full height minus navbar */
            padding-bottom: 50px; /* Space for the footer */
            box-sizing: border-box;
        }

        /* Login Container Style */
        .login-container {
            max-width: 400px;
            width: 100%;
            padding: 30px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .already-registered {
            text-align: center;
            margin-top: 10px;
        }

        /* Alert Styling */
        .alert {
            margin-top: 15px;
        }

        .alert-success {
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
        }

        .alert-danger {
            background-color: #dc3545;
            color: white;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
        }

        /* Footer style */
        footer.footer {
            position: relative;
            bottom: 0;
            width: 100%;
            padding: 20px;
            background-color: #f8f9fa;
            text-align: center;
            margin-top: auto; /* Push footer to the bottom of the page */
        }
    </style>
</head>

<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="">BookMitra</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about">About</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="register">Register</a>
                </li>
                <%--<li class="nav-item">
                    <a class="nav-link" href="books">Books</a>
                </li>--%>
            </ul>
        </div>
    </div>
</nav>

<%-- Rendering dynamic messages for logout or insertion status --%>


<%--    <div class="alert alert-success">--%>
<%--            ${logout}--%>
<%--    </div>--%>


    <div class="alert alert-success">
            ${insert}
    </div>


<!-- Main Content Area -->
<div class="main-content">
    <!-- Login Form -->
    <div class="login-container">
        <h2 class="text-center mb-4"> Login </h2>
        <form action="login" method="POST">

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required placeholder="Enter your email">
            </div>


            <!-- Password -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" required placeholder="Enter your password">
            </div>

            <!-- Login Button -->
            <button type="submit" class="btn btn-primary btn-block">Login</button>
        </form>

        <!-- Link to Register Page if not registered -->
        <div class="already-registered">
            <p>Don't have an account? <a href="register">Register here</a></p>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <p>&copy; 2024 BookStore. All rights reserved.</p>
    </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
