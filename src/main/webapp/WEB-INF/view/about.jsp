<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Online Book Store</title>

    <!-- Bootstrap CSS (CDN) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Optional Custom CSS -->
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
        }

        html, body {
            height: 100%;
        }

        body {
            display: flex;
            flex-direction: column;
        }

        .container {
            flex: 1;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            margin-top: auto; /* This will push the footer to the bottom */
        }

        .about-image {
            width: 100%;
            height: auto;
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
                    <a class="nav-link" href="login">Login</a>
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

<!-- About Us Section -->
<div class="container about-section">
    <h1 class="text-center mb-4">About BookStore</h1>
    <div class="row">
        <div class="col-md-6">
            <img src="<c:url value="/resources/image/fiction2.png"/>" alt="About Us" class="about-image">
        </div>
        <div class="col-md-6">
            <h3>Welcome to BookStore!</h3>
            <p>At BookStore, we believe that books have the power to change lives. Our mission is to provide a wide selection of books across various genres, making it easy for book lovers to find their next great read.</p>
            <p>Whether you're looking for fiction, non-fiction, educational books, or the latest bestsellers, BookStore has something for everyone. We carefully curate our collection to ensure we offer quality books that will inspire, educate, and entertain.</p>
            <p>Our website offers a seamless shopping experience, where you can easily browse through our catalog, read reviews, and make secure purchases. We also provide fast delivery, so your books reach you quickly, no matter where you are.</p>
            <p>Join our community of book lovers and let us help you discover your next favorite book!</p>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="container text-center">
        <p>&copy; 2024 BookStore. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a> | <a href="#">Contact Us</a></p>
    </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
