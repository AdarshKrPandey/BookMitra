<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Details</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

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
           <%-- <li class="nav-item">
                <a class="nav-link" href="/addBook">Add Book</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/customerDetails">Customer Details</a>
            </li>--%>
        </ul>
    </div>
</nav>
${resultMsg}
<!-- Main Content: Customer Details -->
<div class="container mt-5">
    <h1 class="text-center mb-4">Customer Details</h1>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Customer ID</th>
            <th>Customer Name</th>
            <th>Email</th>
            <th>Date of Birth</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Password</th>
        </tr>
        </thead>
        <tbody>
        <!-- Iterate through the list of customers -->
        <c:forEach var="customer" items="${customers}">
            <tr>
                <td>${customer.customerId}</td>
                <td>${customer.customerName}</td>
                <td>${customer.customerEmail}</td>
                <td>${customer.dob}</td>
                <td>${customer.customerContact}</td>
                <td>${customer.customerAddress}</td>
                <td>${customer.password}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Footer -->
<footer class="bg-light text-center py-4 mt-5">
    <p>&copy; 2024 BookMitra. All rights reserved.</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
