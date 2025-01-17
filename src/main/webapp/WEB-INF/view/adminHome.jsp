<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Online Book Store</title>

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
      background-image: url("/resources/image/background.jpg");
    }

    /* Make the footer sticky at the bottom */
    .content-wrapper {
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }

    .footer {
      background-color: #f8f9fa;
      padding: 20px 0;
      margin-top: auto; /* Push the footer to the bottom */
    }

    /* Book card hover effect */
    .book-card {
      transition: transform 0.3s ease-in-out;
    }

    .book-card:hover {
      transform: scale(1.05);
    }

    .slider-image {
      height: 400px;
      object-fit: cover;
    }
  </style>
</head>

<body>

<div class="content-wrapper">
  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container">
      <a class="navbar-brand" href="#">BookMitra</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">

          <li class="nav-item">
            <a class="nav-link" href="adminHome">Home</a>
          </li>
         <%-- <li class="nav-item">
            <a class="nav-link" href="about">About</a>
          </li>--%>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              My Account
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <%--                            <a class="dropdown-item" href="wishlist">Wishlist</a>--%>
<%--              <a class="dropdown-item" href="order">Orders</a>--%>
              <a class="dropdown-item" href="profile?customerEmail=${customerDetails}&password=${password}">Profile</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="logout" onclick="return confirm('Are you sure you want to Logout?');">Logout</a>
              <!-- Check if the user is admin and display the Dashboard option -->
              <c:if test="${role == 'ROLE_ADMIN'}">
                <a class="dropdown-item" href="dashboard">Dashboard</a>
              </c:if>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="dashboard">Dashboard</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="logout" onclick="return confirm('Are you sure you want to Logout?');">Logout</a>
          </li>
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
          <a href="fiction"><img src="${pageContext.request.contextPath}/resources/image/fiction.webp" class="card-img-top" alt="Fiction"></a>
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
          <a href="nonfiction"><img src="${pageContext.request.contextPath}/resources/image/non-fiction.jpg" class="card-img-top" alt="Non-Fiction"></a>
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
          <a href="childrenBook"><img src="${pageContext.request.contextPath}/resources/image/children1.jpg" class="card-img-top" alt="Children's Books"></a>
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
          <a href="novels"><img src="${pageContext.request.contextPath}/resources/image/graphic.jpg" class="card-img-top" alt="Graphic Novels/Comics"></a>
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
<footer class="footer  bg-success">
  <div class="container text-center">
    <p>&copy; 2024 BookStore. All rights reserved.</p>
    <p><a href="#">Privacy Policy</a> | <a href="#">Terms & Conditions</a></p>
  </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
