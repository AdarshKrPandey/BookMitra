<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Summary - BookStore</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { padding-top: 70px; }
        .summary-table { width: 100%; }
        .summary-table th, .summary-table td { padding: 10px; text-align: left; }
        .footer { margin-top: 30px; background-color: #f8f9fa; padding: 20px 0; text-align: center; }
    </style>
</head>
<body>

<div class="container">
    <h2 class="mt-4">Order Summary</h2>

    <!-- Customer Details -->
    <div class="card mt-3">
        <div class="card-header">
            <h5>Customer Details</h5>
        </div>
        <div class="card-body">
            <c:if test="${not empty customer}">
                <p><strong>Name:</strong> ${customer.customerName}</p>
                <p><strong>Email:</strong> ${customer.customerEmail}</p>
                <p><strong>Phone:</strong> ${customer.customerContact}</p>
                <p><strong>Address:</strong> ${customer.customerAddress}</p>
<%--                <p><strong>Date of Birth:</strong> ${customer.dob}</p>--%>
            </c:if>
            <c:if test="${empty customer}">
                <p>No customer details available. Please login again.</p>
            </c:if>

        </div>
    </div>

    <!-- Payment Method -->
    <div class="card mt-3">
        <div class="card-header">
            <h5>Selected Payment Method</h5>
        </div>
        <div class="card-body">
            <p><strong>Payment Method:</strong> ${paymentMethod}</p>
        </div>
    </div>

    <!-- Cart Items -->
    <h3 class="mt-4">Cart Items</h3>
    <table class="summary-table table table-bordered">
        <thead>
        <tr>
            <th>Book Title</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="cartItem" items="${cartItems}">
            <tr>
                <td>${cartItem.book.bookTitle}</td>
                <td>₹${cartItem.book.price}</td>
                <td>${cartItem.quantity}</td>
                <td>₹${cartItem.totalPrice}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <h4>Total Price: ₹${totalPrice}</h4>

    <!-- Checkout Button -->
    <div class="mt-4">
        <a href="checkout?paymentMethod=${paymentMethod}&totalPrice=${totalPrice}" class="btn btn-primary">CheckOut</a>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2024 BookMitra. All rights reserved.</p>
</div>

</body>
</html>
