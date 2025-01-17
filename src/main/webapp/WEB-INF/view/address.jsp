<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enter Address</title>

    <!-- Bootstrap CSS (CDN) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Style for the full page height */
        html, body {
            height: 100%;
            margin: 0;
        }

        /* Center the form in the middle of the page */
        .main-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh; /* 80% of the viewport height */
            flex-direction: column;
        }

        /* Navbar styling */
        .navbar {
            margin-bottom: 20px;
        }

        /* Footer styling */
        footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            position: absolute;
            bottom: 0;
            width: 100%;
            text-align: center;
        }

        /* Form styling */
        .address-form {
            max-width: 500px;
            width: 100%;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>

<body>

<!-- Navigation Bar -->

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">BookMitra</a>
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
                    <a class="nav-link" href="register">Login/Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="books">Books</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content Section -->
<div class="main-container">
    <div class="address-form">
        <h3 class="text-center mb-4">Enter Your Address</h3>
        <form action="#" method="POST">
            <!-- Address Input Field -->
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" class="form-control" id="address" name="address" required placeholder="Enter your address">
            </div>

            <!-- Next Button -->
            <div class="text-center">
                <button  ><a href="payment" >Next</a></button>
            </div>
        </form>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 My Website. All rights reserved.</p>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
