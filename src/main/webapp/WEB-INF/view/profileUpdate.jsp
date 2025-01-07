<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Profile</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        h2 {
            text-align: center;
            color: #343a40;
        }

        .profile-details {
            margin-top: 20px;
        }

        .profile-details p {
            font-size: 16px;
            color: #333;
        }

        .profile-details p strong {
            color: #007bff;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
        }

        .update-form {
            margin-top: 30px;
        }

        .update-form input,
        .update-form button {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .update-form button {
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .update-form button:hover {
            background-color: #0056b3;
        }

        .logout-btn {
            display: block;
            width: 100%;
            padding: 10px;
            text-align: center;
            font-size: 16px;
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .logout-btn:hover {
            background-color: #c82333;
        }

        /* Navbar Styling */
        .navbar {
            margin-bottom: 20px;
        }

        .navbar-nav .nav-item {
            margin-left: 15px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                margin-top: 10px;
                padding: 15px;
            }
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Customer Portal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logOut" onclick="return confirm('Are you sure you want to logout?');">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<!-- Profile Content -->
<div class="container">
    <%--    <h2>Customer Profile</h2>--%>
    ${resultMsg}
    <!-- Show error message if invalid credentials -->
    <c:if test="${not empty error}">
        <div class="error-message">
            <p>${error}</p>
        </div>
    </c:if>

    <!-- Display customer details -->
    <c:if test="${not empty customer}">
        <%-- <div class="profile-details">
             <p><strong>Customer Name:</strong> ${customer.customerName}</p>
             <p><strong>Email:</strong> ${customer.customerEmail}</p>
             <p><strong>Phone:</strong> ${customer.customerContact}</p>
             <p><strong>Address:</strong> ${customer.customerAddress}</p>
             <p><strong>Date of Birth:</strong> ${customer.dob}</p>
         </div>--%>

        <!-- Optional Update Profile Form (uncomment for editing the profile) -->
        <div class="update-form">
            <h4>Update Profile</h4>
            <form action="editCust/{customerName}" method="POST" >
                <input type="hidden" name="customerId" value="${customer.customerId}">
                <input type="text" name="customerName" value="${customer.customerName}" placeholder="Full Name" required>
                <input type="email" name="customerEmail" value="${customer.customerEmail}" placeholder="Email" required>
                <input type="password" name="password" value="${customer.password}" placeholder="Password" required>
                <input type="text" name="customerContact" value="${customer.customerContact}" placeholder="Phone" required>
                <input type="text" name="customerAddress" value="${customer.customerAddress}" placeholder="Address" required>
                <input type="date" name="dob" value="${customer.dob}" required>
                <button type="submit">Update Profile</button>
            </form>
        </div>
    </c:if>

    <br>

    <!-- Logout Button -->
    <a href="logOut" class="logout-btn">Logout</a>

</div>

<!-- Bootstrap JS & Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>