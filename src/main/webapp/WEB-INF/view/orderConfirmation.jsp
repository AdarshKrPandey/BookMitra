<%--
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<h2>Order Confirmation</h2>
<p>Your order has been placed successfully. Order ID: ${orderDetails.orderId}</p>
<p>Total Price: ₹${orderDetails.totalPrice}</p>
<p>Payment Method: ${orderDetails.paymentMethod}</p>
<p>Status: ${orderDetails.status}</p>

<h3>Order Items</h3>
<c:forEach var="item" items="${orderDetails.items}">
  <div>
    <h5>${item.bookTitle}</h5>
    <p>₹${item.price} x ${item.quantity} = ₹${item.totalPrice}</p>
  </div>
</c:forEach>
--%>
