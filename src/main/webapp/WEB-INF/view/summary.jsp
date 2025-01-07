<%--
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Summary</title>

    <!-- Bootstrap CSS (CDN) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Navbar Styling */
        .navbar {
            margin-bottom: 20px;
        }

        /* Main container */
        .main-container {
            margin-top: 50px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Customer Details and Order Summary Styling */
        .summary-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Heading Styling */
        .summary-container h3 {
            margin-bottom: 20px;
        }

        /* Table Styling */
        .summary-container table {
            width: 100%;
            margin-bottom: 20px;
        }

        .summary-container table th,
        .summary-container table td {
            padding: 10px;
            text-align: left;
        }

        /* Place Order Button */
        .place-order-btn {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .place-order-btn:hover {
            background-color: #0056b3;
        }

        /* Footer Styling */
        footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            text-align: center;
            position: absolute;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">My Bookstore</a>
    </div>
</nav>

<!-- Main Content Section -->
<div class="container main-container">
    <div class="summary-container">
        <h3>Order Summary</h3>

        <!-- Customer Information -->
        <div class="customer-details mb-4">
            <h5>Customer Details</h5>
            <table class="table">
                <tr>
                    <th>Name</th>
                    <td><span id="customer-name">John Doe</span></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><span id="customer-email">johndoe@example.com</span></td>
                </tr>
                <tr>
                    <th>Phone</th>
                    <td><span id="customer-phone">+123 456 7890</span></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><span id="customer-address">123 Book Street, City, Country</span></td>
                </tr>
            </table>
        </div>

        <!-- Order Details -->
        <div class="order-details mb-4">
            <h5>Order Details</h5>
            <table class="table" id="order-table">
                <thead>
                <tr>
                    <th>Book Title</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <!-- Dynamically populated book details go here -->
                </tbody>
            </table>
        </div>

        <!-- Total Amount -->
        <div class="total-amount mb-4">
            <h5>Total Amount</h5>
            <table class="table">
                <tr>
                    <th>Total Items</th>
                    <td><span id="total-items">0</span></td>
                </tr>
                <tr>
                    <th>Total Price</th>
                    <td><span id="total-price">$0.00</span></td>
                </tr>
            </table>
        </div>

        <!-- Place Order Button -->
        <div class="text-center">
            <button class="place-order-btn" type="button" id="place-order-btn">Place Order</button>
        </div>
    </div>
</div>

<!-- Footer -->
<footer>
    <p>&copy; 2024 My Bookstore. All rights reserved.</p>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Script to dynamically populate the order details -->
<script>
    // Example data, this should be replaced with actual data dynamically
    const customerData = {
        name: "John Doe",
        email: "johndoe@example.com",
        phone: "+123 456 7890",
        address: "123 Book Street, City, Country"
    };

    const orderItems = [
        { title: "The Great Gatsby", quantity: 1, price: 10.00 },
        { title: "1984", quantity: 2, price: 12.00 },
        { title: "To Kill a Mockingbird", quantity: 1, price: 8.50 }
    ];

    // Function to populate customer details
    function populateCustomerDetails() {
        document.getElementById('customer-name').innerText = customerData.name;
        document.getElementById('customer-email').innerText = customerData.email;
        document.getElementById('customer-phone').innerText = customerData.phone;
        document.getElementById('customer-address').innerText = customerData.address;
    }

    // Function to populate order details
    function populateOrderDetails() {
        const orderTableBody = document.getElementById('order-table').getElementsByTagName('tbody')[0];
        let totalItems = 0;
        let totalPrice = 0;

        orderItems.forEach(item => {
            const row = orderTableBody.insertRow();
            row.insertCell(0).innerText = item.title;
            row.insertCell(1).innerText = item.quantity;
            row.insertCell(2).innerText = `$${item.price.toFixed(2)}`;
            totalItems += item.quantity;
            totalPrice += item.quantity * item.price;
        });

        document.getElementById('total-items').innerText = totalItems;
        document.getElementById('total-price').innerText = `$${totalPrice.toFixed(2)}`;
    }

    // Initialize the page with dynamic data
    populateCustomerDetails();
    populateOrderDetails();

    // Place Order button functionality (example)
    document.getElementById('place-order-btn').addEventListener('click', () => {
        alert('Order placed successfully!');
    });
</script>

</body>

</html>
--%>
