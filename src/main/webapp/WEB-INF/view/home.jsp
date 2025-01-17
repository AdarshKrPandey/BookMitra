<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookMitra</title>

    <!-- Bootstrap CSS (CDN) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome CDN -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <!-- Optional Custom CSS -->
    <style>
        /* Updated color scheme and design improvements */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            background-color: #007bff; /* New Navbar Color */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
        }

        .navbar-brand {
            font-weight: bold;
            color: #fff;
        }

        .navbar-nav .nav-link {
            color: #fff !important;
            font-size: 16px;
        }

        .navbar-nav .nav-link:hover {
            color: #f0f0f0 !important;
        }

        /* Add padding to the body to prevent content from being hidden under the navbar */
        html, body {
            height: 100%;
            margin: 0;
            background-image: url('/resources/image/back.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center center;
            background-attachment: fixed;
            padding-top: 80px; /* Adjust the space above the navbar */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #fff; /* Default text color */
        }

        /* Carousel styling */
        .carousel-inner {
            padding-left: 20px;
            padding-right: 20px;
        }

        .slider-image {
            height: 450px;
            object-fit: cover;
            border-radius: 10px; /* Rounded corners for the carousel images */
        }

        /* Main content section */
        .content-wrapper {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .footer {
            background-color: #343a40; /* Dark footer color */
            padding: 20px 0;
            text-align: center;
        }

        .social-icons a {
            font-size: 30px;
            margin: 0 15px;
            color: #39efcb;
            text-decoration: none;
        }

        .social-icons a:hover {
            color: #ddd;
        }

        /* Book card hover effect */
        .book-card {
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease;
            border-radius: 10px; /* Rounded corners */
            overflow: hidden;
        }

        .book-card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        }

        /* Book card image styling */
        .card-img-top {
            border-radius: 10px;
        }

        /* Card body improvements */
        .card-body {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 15px;
            text-align: center;
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: bold;
            color: #007bff;
        }

        .card-text {
            font-size: 1rem;
            margin-bottom: 15px;
            color: #007bff;
        }

        /* Responsive adjustments */
        @media (max-width: 767px) {
            .navbar-nav {
                text-align: center;
            }

            .carousel-inner {
                padding-left: 10px;
                padding-right: 10px;
            }

            .slider-image {
                height: 300px;
            }
        }

    </style>
</head>

<body>

<div class="content-wrapper">
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="/">BookMitra</a>
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
                   <%-- <li class="nav-item">
                        <a class="nav-link" href="books">Books</a>
                    </li>--%>

                    <!-- Wrap search input and button in a form -->
                    <form action="search" method="get" class="d-flex">
                        <input type="text" name="query" placeholder="Search for books..." class="form-control mr-2">
                        <button type="submit" class="btn btn-primary">Search</button>
                    </form>

                </ul>
            </div>
        </div>
    </nav>

    <!-- Image Slider -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100 slider-image" src="<c:url value="/resources/image/slid4.jpg"/>" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Explore New Books</h5>
                    <p>Find your next great read at BookStore.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100 slider-image" src="<c:url value="/resources/image/slid5.jpg"/>" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Discover Bestsellers</h5>
                    <p>Get the most popular books of the year.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100 slider-image" src="<c:url value="/resources/image/slide1.jpg"/>" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Affordable Books for All</h5>
                    <p>Books that fit your budget and your taste.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- Main Content Section -->
    <div class="container mt-5">
        <h1 class="text-center mb-4">Book Categories</h1>
        <div class="row">

            <!-- Book Card 1 -->
            <div class="col-md-3 mb-4">
                <div class="card book-card">
                    <a href="books"><img src="${pageContext.request.contextPath}/resources/image/fiction.webp" class="card-img-top" alt="Fiction"></a>
                    <div class="card-body">
                        <h5 class="card-title">Fiction</h5>
                        <p class="card-text">Fiction books take you into worlds of imagination and creativity,
                            allowing you to explore new realities through captivating stories.
                            Whether you enjoy thrilling adventures, heartwarming romances,
                            or thought-provoking mysteries, the fiction category offers something for every reader.</p>
                    </div>
                </div>
            </div>

            <!-- Book Card 2 -->
            <div class="col-md-3 mb-4">
                <div class="card book-card">
                    <a href="books"><img src="${pageContext.request.contextPath}/resources/image/non-fiction.jpg" class="card-img-top" alt="Non-Fiction"></a>
                    <div class="card-body">
                        <h5 class="card-title">Non-Fiction</h5>
                        <p class="card-text"> Non-fiction books are grounded in reality and focus on real-world topics.
                            Whether you're interested in history, biographies, self-help, science, or politics,
                            non-fiction books provide factual and insightful information.</p>
                    </div>
                </div>
            </div>

            <!-- Book Card 3 -->
            <div class="col-md-3 mb-4">
                <div class="card book-card">
                    <a href="books"><img src="${pageContext.request.contextPath}/resources/image/children1.jpg" class="card-img-top" alt="Children's Books"></a>
                    <div class="card-body">
                        <h5 class="card-title">Children's Books</h5>
                        <p class="card-text"> Children's books are filled with colorful illustrations, engaging characters, and exciting stories
                            designed to capture the imagination of young readers. They range from picture books for toddlers
                            to chapter books for older children</p>
                    </div>
                </div>
            </div>

            <!-- Book Card 4 -->
            <div class="col-md-3 mb-4">
                <div class="card book-card">
                    <a href="books"><img src="${pageContext.request.contextPath}/resources/image/graphic.jpg" class="card-img-top" alt="Graphic Novels/Comics"></a>
                    <div class="card-body">
                        <h5 class="card-title">Graphic Novels/Comics</h5>
                        <p class="card-text"> From superhero adventures to fantasy worlds, graphic novels and comics explore a range of genres with
                            vivid art and compelling characters. Whether you're a fan of action-packed stories or prefer in-depth
                            character development, graphic novels offer a unique, visually immersive reading experience.</p>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <!-- Footer -->
<footer class="footer">
    <div class="container text-center">
        <p>&copy; 2024 BookMitra. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a></p>

        <!-- Social Media Icons -->
        <div class="social-icons">
            <a href="https://www.facebook.com" target="_blank" title="Facebook"><i class="fab fa-facebook-square"></i></a>
            <a href="https://www.instagram.com" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="https://www.linkedin.com" target="_blank" title="LinkedIn"><i class="fab fa-linkedin"></i></a>
            <a href="https://www.twitter.com" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="https://www.youtube.com" target="_blank" title="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
    </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
