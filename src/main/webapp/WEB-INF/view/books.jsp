<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Books Collection - BookStore</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body { padding-top: 70px; }
        .navbar { position: fixed; top: 0; z-index: 1000; background-color: #fff; }
        .footer { background-color: #f8f9fa; padding: 20px 0; text-align: center; }
        .book-card { margin-bottom: 20px; }
        .book-price { font-size: 1.2rem; color: #28a745; font-weight: bold; }
        .add-to-cart-btn { background-color: #007bff; color: white; border: none; padding: 8px 15px; cursor: pointer; }
        .add-to-cart-btn:hover { background-color: #0056b3; }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">BookMitra</a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="customerHome">Home</a></li>
<%--                <li class="nav-item"><a class="nav-link" href="about">About</a></li>--%>
                <li class="nav-item"><a class="nav-link" href="books">Books</a></li>
                <li class="nav-item"><a class="nav-link" href="cart">Cart (<span id="cartCount">${cartCount}</span>)</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Books Section -->
<div class="container mt-4">
    <h2 class="text-center mb-4">Our Books Collection</h2>
    <div class="row">
        <c:forEach var="book" items="${books}">
            <div class="col-md-3 book-card">
                <div class="card">
                    <img src="<c:url value='/resources/image/${book.image}'/>" class="card-img-top" alt="${book.bookTitle}">
                    <div class="card-body">
                        <h5 class="card-title">${book.bookTitle}</h5>
                        <p class="card-text">${book.description}</p>
                        <p class="book-price">₹${book.price}</p>

                        <form action="${pageContext.request.contextPath}/add-to-cart/${book.bookId}" method="POST">
                            <button type="submit" class="btn add-to-cart-btn">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2024 BookMitra. All rights reserved.</p>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
