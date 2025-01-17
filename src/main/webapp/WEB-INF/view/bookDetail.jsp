<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book List</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    html, body {
      height: 100%;
    }

    .content-wrapper {
      display: flex;
      flex-direction: column;
      min-height: 100%;
    }

    .main-content {
      flex: 1;
    }

    footer {
      background-color: #f8f9fa;
      text-align: center;
      padding: 10px;
      margin-top: auto;
    }
  </style>
</head>
<body>

<div class="content-wrapper">

  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">BookMitra</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="dashboard">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addBook">Add Book</a>
        </li>

      </ul>
    </div>
  </nav>

  <c:if test="${not empty resultMsg}">
    <div class="alert alert-success">
        ${resultMsg}
    </div>
  </c:if>

  <!-- Main Content: Book List -->
  <div class="main-content container mt-5">
    <h1 class="text-center mb-4">Book List</h1>

    <table class="table table-bordered">
      <thead>
      <tr>
        <th>Book ID</th>
        <th>Title</th>
        <th>Author</th>
        <th>Category</th>
        <th>Price</th>
        <th>Description</th>
        <th>Quantity</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
      <!-- Iterate through the list of books -->
      <c:forEach var="book" items="${book}">
        <tr>
          <td>${book.bookId}</td>
          <td>${book.bookTitle}</td>
          <td>${book.author}</td>
          <td>${book.category}</td>
          <td>${book.price}</td>
          <td>${book.description}</td>
          <td>${book.quantity}</td>
          <td>
            <!-- Edit Button -->
            <a href="/editBook/${book.bookId}" class="btn btn-warning btn-sm">Edit</a>

<%--          <td><a href="delete/${book.bookId}">Delete</a></td>--%>

          <!-- Delete Button Form -->
            <form action="/delete/${book.bookId}" method="POST" style="display:inline;">
              <input type="hidden" name="bookId" value="${book.bookId}" />
              <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this book?');">Delete</button>
            </form>


          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>

  <!-- Footer -->
  <footer>
    <p>&copy; 2024 BookMitra. All rights reserved.</p>
  </footer>

</div>

<!-- Scripts for Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
