<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard - BookStore</title>

  <!-- Bootstrap CSS (CDN) -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

  <style>
    /* Sidebar styles */
    .sidebar {
      position: fixed;
      top: 0;
      left: 0;
      width: 250px;
      height: 100vh;
      background-color: #343a40;
      color: white;
      padding-top: 20px;
      transition: 0.3s;
    }

    .sidebar a {
      color: white;
      text-decoration: none;
      padding: 10px;
      display: block;
    }

    .sidebar a:hover {
      background-color: #495057;
    }

    /* Main content styles */
    .main-content {
      margin-left: 250px;
      padding: 20px;
      flex-grow: 1;
      padding-bottom: 60px; /* Adjust to give space for fixed footer */
    }

    /* Flexbox layout for the body to push footer to the bottom */
    body {
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* Footer styles */
    footer {
      background-color: #f8f9fa;
      padding: 20px 0;
      width: 100%;
      text-align: center;
      position: fixed;
      bottom: 0;
      left: 0;
    }

    /* Adjust for small screens (responsive sidebar) */
    @media (max-width: 768px) {
      .sidebar {
        position: absolute;
        left: -250px;
        transition: 0.3s;
      }

      .sidebar.active {
        left: 0;
      }

      .main-content {
        margin-left: 0;
      }

      .navbar-toggler {
        display: block;
      }
    }

    /* Button styles */
    .btn-custom {
      margin: 10px 0;
      color: white;
    }

    /* Book card hover effect */
    .book-card {
      transition: transform 0.3s ease-in-out;
    }

    .book-card:hover {
      transform: scale(1.05);
    }

    /* Smaller images */
    .card-img-top {
      width: 100%;
      height: 250px;
      object-fit: cover;
    }

    .navbar {
      margin-bottom: 20px;
    }

    /* Search input and button styles */
    .search-bar {
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .search-bar input {
      width: 200px;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 5px 0 0 5px;
    }

    .search-bar button {
      padding: 8px 15px;
      border: 1px solid #007bff;
      background-color: #007bff;
      color: white;
      border-radius: 0 5px 5px 0;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .search-bar button:hover {
      background-color: #0056b3;
    }

  </style>
</head>

<body>

<!-- Navigation Bar with Hamburger Menu -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" onclick="toggleSidebar()">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="container">
    <a class="navbar-brand" href="dashboard">Book Mitra Dashboard</a>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="adminHome">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logOut">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Sidebar -->
<div class="sidebar" id="sidebar">
  <a href="#">Dashboard</a>
  <a href="bookDetail">Books</a>
  <a href="#">Orders</a>
  <a href="customerDetail">Customers</a>
</div>

<!-- Main Content Section -->
<div class="main-content">
  <h2>Books</h2>

  <!-- Buttons for Add Book, Search -->
  <div class="top-buttons d-flex justify-content-between">
    <button class="btn btn-info "><a href="addBook" class="text-white">Add Book</a> </button>

    <div class="search-bar">

      <!-- Wrap search input and button in a form -->
      <form action="search" method="get" class="d-flex">
        <input type="text" name="query" placeholder="Search for books..." class="form-control mr-2">
        <button type="submit" class="btn btn-primary">Search</button>
      </form>

    </div>
  </div>

<%--  <!-- Book Cards Section -->
  <div class="row mt-4">
    <div class="col-md-3 mb-4">
      <div class="card book-card">
        <img src="https://via.placeholder.com/200x300?text=Book+1" class="card-img-top" alt="Book 1">
        <div class="card-body">
          <h5 class="card-title">Book Title 1</h5>
          <p class="card-text">This is a brief description of the book. A captivating story awaits!</p>
          <button class="btn btn-primary">View Details</button>
          <button class="btn btn-warning btn-custom">Edit</button>
          <button class="btn btn-danger btn-custom">Delete</button>
        </div>
      </div>
    </div>

    <div class="col-md-3 mb-4">
      <div class="card book-card">
        <img src="https://via.placeholder.com/200x300?text=Book+2" class="card-img-top" alt="Book 2">
        <div class="card-body">
          <h5 class="card-title">Book Title 2</h5>
          <p class="card-text">An exciting adventure book filled with suspense and thrill.</p>
          <button class="btn btn-primary">View Details</button>
          <button class="btn btn-warning btn-custom">Edit</button>
          <button class="btn btn-danger btn-custom">Delete</button>
        </div>
      </div>
    </div>
  </div>

</div>--%>

<!-- Footer -->
<footer>
  <div class="container text-center">
    <p>&copy; 2024 BookStore. All rights reserved.</p>
  </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
  // Function to toggle the sidebar
  function toggleSidebar() {
    document.getElementById('sidebar').classList.toggle('active');
  }
</script>

</body>

</html>
