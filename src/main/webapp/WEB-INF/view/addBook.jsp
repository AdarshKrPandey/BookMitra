<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Book</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    /* Ensure full height layout without vertical scrolling */
    html, body {
      height: 100%;
      margin: 0;
    }

    /* Full height container that centers content */
    .content {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100vh; /* Viewport height */
    }

    /* Form container styling */
    .form-container {
      max-width: 600px;
      width: 100%;
      padding: 30px;
      background-color: #f8f9fa;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .footer {
      position: absolute;
      bottom: 0;
      width: 100%;
      background-color: #343a40;
      color: white;
      text-align: center;
      padding: 10px;
    }

    .navbar-brand img {
      width: 40px;
      height: auto;
    }
  </style>
</head>
<body class="bg-light">

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container">
    <!-- BookMitra Logo -->
    <a class="navbar-brand" href="#">
      <img src="https://via.placeholder.com/40x40.png?text=BM" alt="BookMitra Logo" />
      BookMitra
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="dashboard">Go to Home</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="content">
  <div class="form-container">
    <h1 class="text-center mb-4">Add Book</h1>

    <div class="text-center">
      <c:if test="${not empty success}">
        <div class="alert alert-info">${success}</div>
      </c:if>
    </div>
<%--    ${success}--%>
    <!-- Book Form using Spring Form Tags -->
    <form:form action="addBook" method="post" enctype="multipart/form-data" modelAttribute="book">

      <!-- Book ID -->
      <div class="form-group">
        <label for="bookId">Book ID:</label>
        <form:input path="bookId" id="bookId" class="form-control" required="true" />
      </div>

      <!-- Book Title -->
      <div class="form-group">
        <label for="bookTitle">Book Title:</label>
        <form:input path="bookTitle" id="bookTitle" class="form-control" required="true" />
      </div>

      <!-- Author -->
      <div class="form-group">
        <label for="author">Author:</label>
        <form:input path="author" id="author" class="form-control" required="true" />
      </div>

      <!-- Category -->
      <div class="form-group">
        <label for="category">Category:</label>
        <form:input path="category" id="category" class="form-control" required="true" />
      </div>

      <!-- Price -->
      <div class="form-group">
        <label for="price">Price:</label>
        <form:input path="price" id="price" class="form-control" step="0.01" required="true" />
      </div>

      <!-- Description -->
      <div class="form-group">
        <label for="description">Description:</label>
        <form:textarea path="description" id="description" class="form-control" rows="4" required="true"/>
      </div>

      <!-- Quantity -->
      <div class="form-group">
        <label for="quantity">Quantity:</label>
        <form:input path="quantity" id="quantity" class="form-control" required="true" />
      </div>

      <!-- Submit Button -->
      <div class="form-group text-center">
        <input type="submit" value="Add Book" class="btn btn-primary" />
      </div>

    </form:form>

    <br>
    <!-- Display Success/Error Message -->
    <div class="text-center">
      <c:if test="${not empty message}">
        <div class="alert alert-info">${message}</div>
      </c:if>
    </div>
  </div>
</div>

<!-- Footer Section -->
<div class="footer">
  <p>&copy; 2024 Book Store. All Rights Reserved.</p>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
