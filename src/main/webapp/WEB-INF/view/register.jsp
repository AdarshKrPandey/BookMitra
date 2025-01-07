<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration - BookStore</title>

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
            background-color: #fff;
        }

        /* Add padding to the body so that the content doesn't get hidden under the navbar */
        body {
            padding-top: 70px;
        }

        .registration-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .already-registered {
            text-align: center;
            margin-top: 10px;
        }

        /* Error message style */
        #error-message {
            color: red;
            display: none;
            font-size: 14px;
            margin-top: 10px;
        }
    </style>

    <script>
        function validatePassword() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var errorMessage = document.getElementById("error-message");    // Error message div
            if (password !== confirmPassword) {
                errorMessage.style.display = "block";
                errorMessage.innerHTML = "Password and Confirm Password do not match!";
                return false; // Prevent form submission
            } else {
                errorMessage.style.display = "none";
                return true; // Allow form submission
            }
        }
    </script>
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
                    <a class="nav-link" href="login">Login</a>
                </li>

               <%-- <li class="nav-item">
                    <a class="nav-link" href="books">Books</a>
                </li>--%>
            </ul>
        </div>
    </div>
</nav>

<!-- Registration Form -->
<div class="registration-container">
    <h2 class="text-center mb-4">Customer Registration</h2>

    <!-- Spring Form Start -->
    <form:form action="insert" modelAttribute="customer" method="POST" onsubmit="return validatePassword()">

        <!-- Customer Name -->
        <div class="form-group">
            <label for="name">Full Name</label>
            <form:input type="text" class="form-control" id="name" name="customerName" path="customerName"
                        required="true" placeholder="Enter your name"/>

        </div>

        <!-- Email -->
        <div class="form-group">
            <label for="email">Email</label>
            <form:input type="email" class="form-control" id="email" name="customerEmail" path="customerEmail"
                        required="true" placeholder="Enter your email"/>
            <form:errors path="customerEmail" cssClass="form-error"/>
        </div>

        <!-- Date of Birth -->
        <div class="form-group">
            <label for="dob">Date of Birth</label>
            <form:input type="date" class="form-control" id="dob" name="dob" path="dob" required="true"/>
        </div>

        <!-- Contact Number -->
        <div class="form-group">
            <label for="contact">Contact Number</label>
            <form:input type="tel" class="form-control" id="contact" name="customerContact" path="customerContact"
                        required="true" placeholder="Enter your contact number"/>
        </div>

        <!-- Address -->
        <div class="form-group">
            <label for="address">Address</label>
            <form:textarea class="form-control" id="address" name="customerAddress" path="customerAddress"
                           required="true" rows="3" placeholder="Enter your address"/>
        </div>

        <!-- Password -->
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" class="form-control" required placeholder="Enter password">
            <form:errors path="password" cssClass="form-error"/>
        </div>

        <!-- Confirm Password -->
        <div class="form-group">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required placeholder="Confirm your password">
        </div>

        <!-- Error Message -->
        <div id="error-message"></div>

        <!-- Register Button -->
        <button type="submit" class="btn btn-primary btn-block">Register</button>
    </form:form>

    <!-- Link to Login if already registered -->
    <div class="already-registered">
        <p>Already have an account? <a href="login">Login here</a></p>
    </div>
</div>

<!-- Footer -->
<footer class="footer mt-auto py-3 bg-light">
    <div class="container text-center">
        <p>&copy; 2024 BookStore. All rights reserved.</p>
    </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
