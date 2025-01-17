<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books Collection - BookStore</title>

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
        }

        .book-card {
            margin-bottom: 20px;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            text-align: center;
        }

        .book-price {
            font-size: 1.2rem;
            color: #28a745;
            font-weight: bold;
        }

        .add-to-cart-btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 8px 15px;
            cursor: pointer;
        }

        .add-to-cart-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

<!-- Header (Navbar) -->
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
                <li class="nav-item">
                    <a class="nav-link" href="books">Books</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Books Section -->
<div class="container mt-4">
    <h2 class="text-center mb-4">Our Books Collection</h2>

    <div class="row">
        <!-- Book 1 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/sudha1.jpg" />" class="card-img-top" alt="Book 1">
                <div class="card-body">
                    <h5 class="card-title">Book Title 1</h5>
                    <p class="card-text">A short description of Book 1. This is an amazing book about...</p>
                    <p class="book-price">₹1,200</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 2 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/sudha2.jpg" />" class="card-img-top" alt="Book 2">
                <div class="card-body">
                    <h5 class="card-title">Book Title 2</h5>
                    <p class="card-text">A short description of Book 2. This book dives into...</p>
                    <p class="book-price">₹1,100</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 3 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/sudha3.jpg" />" class="card-img-top" alt="Book 3">
                <div class="card-body">
                    <h5 class="card-title">Book Title 3</h5>
                    <p class="card-text">A short description of Book 3. Learn more about...</p>
                    <p class="book-price">₹1,500</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 4 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/sudha4.jpg" />" class="card-img-top" alt="Book 4">
                <div class="card-body">
                    <h5 class="card-title">Book Title 4</h5>
                    <p class="card-text">A short description of Book 4. Explore the world of...</p>
                    <p class="book-price">₹1,250</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 5 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/sudha5.webp" />" class="card-img-top" alt="Book 5">
                <div class="card-body">
                    <h5 class="card-title">Book Title 5</h5>
                    <p class="card-text">A short description of Book 5. This book is about...</p>
                    <p class="book-price">₹1,800</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 6 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/sudha6.jpg" />" class="card-img-top" alt="Book 6">
                <div class="card-body">
                    <h5 class="card-title">Book Title 6</h5>
                    <p class="card-text">A short description of Book 6. Dive deep into...</p>
                    <p class="book-price">₹1,000</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 7 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/sudha7.jpg" />" class="card-img-top" alt="Book 7">
                <div class="card-body">
                    <h5 class="card-title">Book Title 7</h5>
                    <p class="card-text">A short description of Book 7. It's an interesting read...</p>
                    <p class="book-price">₹2,000</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 8 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/nirmaral.webp" />" class="card-img-top" alt="Book 8">
                <div class="card-body">
                    <h5 class="card-title">Book Title 8</h5>
                    <p class="card-text">A short description of Book 8. This one is a classic...</p>
                    <p class="book-price">₹2,500</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 9 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/mansarobar.jpg" />" class="card-img-top" alt="Book 9">
                <div class="card-body">
                    <h5 class="card-title">Book Title 9</h5>
                    <p class="card-text">A short description of Book 9. Packed with knowledge...</p>
                    <p class="book-price">₹1,350</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 10 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/fiction.webp" />" class="card-img-top" alt="Book 10">
                <div class="card-body">
                    <h5 class="card-title">Book Title 10</h5>
                    <p class="card-text">A short description of Book 10. This book explores...</p>
                    <p class="book-price">₹1,200</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 11 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/children1.jpg" />" class="card-img-top" alt="Book 11">
                <div class="card-body">
                    <h5 class="card-title">Book Title 11</h5>
                    <p class="card-text">A short description of Book 11. A must-read for everyone...</p>
                    <p class="book-price">₹1,450</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 12 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/sudha8.jpg" />" class="card-img-top" alt="Book 12">
                <div class="card-body">
                    <h5 class="card-title">Book Title 12</h5>
                    <p class="card-text">A short description of Book 12. Delve into the world of...</p>
                    <p class="book-price">₹900</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>


        <!-- Book 13 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/Godan.jpg" />" class="card-img-top" alt="Book 13">
                <div class="card-body">
                    <h5 class="card-title">Book Title 13</h5>
                    <p class="card-text">A short description of Book 3. This book explores...</p>
                    <p class="book-price">₹1,200</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 14 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/dune.jpg" />" class="card-img-top" alt="Book 14">
                <div class="card-body">
                    <h5 class="card-title">Book Title 14</h5>
                    <p class="card-text">A short description of Book 14. A must-read for everyone...</p>
                    <p class="book-price">₹450</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 15 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/fiction5.jpg" />" class="card-img-top" alt="Book 15">
                <div class="card-body">
                    <h5 class="card-title">Book Title 15</h5>
                    <p class="card-text">A short description of Book 15. Delve into the world of...</p>
                    <p class="book-price">₹950</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

        <!-- Book 16 -->
        <div class="col-md-3 book-card">
            <div class="card">
                <img src="<c:url value="/resources/image/fiction2.png" />" class="card-img-top" alt="Book 16">
                <div class="card-body">
                    <h5 class="card-title">Book Title 16</h5>
                    <p class="card-text">A short description of Book 16. Delve into the world of...</p>
                    <p class="book-price">₹950</p>
                    <button class="add-to-cart-btn">Add to Cart</button>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Footer Section -->
<div class="footer">
    <p>&copy; 2024 BookStore. All rights reserved.</p>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
