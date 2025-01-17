<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout Success - BookStore</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <div class="alert alert-success text-center">
        <h2>Thank You for Your Purchase!</h2>
        <p>Payment Method: ${paymentMethod}</p>
        <p>Total Price: ₹${totalPrice}</p>
        <a href="customerHome" class="btn btn-primary mt-3">Return to Home</a>
    </div>
</div>

</body>
</html>
