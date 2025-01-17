<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart - BookStore</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body { padding-top: 70px; }
        .cart-item { border: 1px solid #ddd; padding: 15px; margin-bottom: 10px; background-color: #f9f9f9; }
        .footer { background-color: #f8f9fa; padding: 20px 0; text-align: center; margin-top: 30px; }
    </style>
</head>
<body>


<!-- Cart Section -->
<div class="container">
    <h2>Your Cart</h2>
    <c:forEach var="cartItem" items="${cart}">
        <div class="cart-item d-flex justify-content-between">
            <div class="d-flex">
                <img src="<c:url value='/resources/image/${cartItem.book.image}'/>" alt="${cartItem.book.bookTitle}" class="mr-3" width="100">
                <div>
                    <strong>${cartItem.book.bookTitle}</strong><br>
                             ${cartItem.book.description}<br>
                                ₹${cartItem.book.price} x
                    <form action="update-cart/${cartItem.book.bookId}/${cartItem.quantity}" method="POST" style="display:inline;">
                        <input type="number" name="quantity" value="${cartItem.quantity}" min="1" onchange="this.form.submit()" style="width: 60px; text-align: center;">
                    </form>
                    <br><strong>Total: ₹${cartItem.totalPrice}</strong>
                </div>
            </div>
            <!-- Quantity Update Form -->
            <form action="${pageContext.request.contextPath}/update-cart/${cartItem.book.bookId}" method="POST" class="d-flex align-items-center">
                <input type="number" name="quantity" value="${cartItem.quantity}" min="1" class="form-control text-center" style="width: 60px;">
                <button type="submit" class="btn btn-sm btn-primary ml-2">Update</button>
            </form>

            <!-- Remove Button -->
            <a href="${pageContext.request.contextPath}/remove-from-cart/${cartItem.book.bookId}" class="btn btn-sm btn-danger">Remove</a>

        </div>
    </c:forEach>
    <h3>Total Price: ₹${totalPrice}</h3>
</div>



<form action="${pageContext.request.contextPath}/processCheckout" method="POST">
    <div class="form-group">
        <label for="paymentMethod">Select Payment Method:</label>
        <select class="form-control" id="paymentMethod" name="paymentMethod" required>
            <option value="" disabled selected>Select Payment Method</option>
            <option value="Paytm">Paytm</option>
            <option value="PhonePe">PhonePe</option>
            <option value="Google Pay">Google Pay</option>
            <option value="UPI">UPI</option>
        </select>
    </div>
    <button type="submit" class="btn btn-success">Proceed to Checkout</button>
</form>




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
