/*
package org.spring.bookMitra.dao.impl;

import org.spring.bookMitra.model.CartItem;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class OrderDao {
    private JdbcTemplate jdbcTemplate;

    public OrderDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Place an order
    public int placeOrder(int userId, double totalPrice, String paymentMethod) {
        String orderQuery = "INSERT INTO orders (user_id, total_price, payment_method) VALUES (?, ?, ?)";
        jdbcTemplate.update(orderQuery, userId, totalPrice, paymentMethod);

        // Get the generated order ID
        String getOrderIdQuery = "SELECT LAST_INSERT_ID()";
        return jdbcTemplate.queryForObject(getOrderIdQuery, Integer.class);
    }

    // Place items in order_items table
    public void addOrderItems(int orderId, List<CartItem> cartItems) {
        String orderItemQuery = "INSERT INTO order_items (order_id, book_id, quantity, price, total_price) VALUES (?, ?, ?, ?, ?)";
        for (CartItem cartItem : cartItems) {
            jdbcTemplate.update(orderItemQuery, orderId, cartItem.getBookId(), cartItem.getQuantity(), cartItem.getPrice(), cartItem.getPrice() * cartItem.getQuantity());
        }
    }

    // Add payment info
    public void addPaymentInfo(int orderId, String paymentMethod) {
        String paymentQuery = "INSERT INTO payments (order_id, payment_method, payment_status) VALUES (?, ?, ?)";
        jdbcTemplate.update(paymentQuery, orderId, paymentMethod, "Pending");
    }

    // Get Order details
    public OrderDetails getOrderDetails(int orderId) {
        String orderQuery = "SELECT o.order_id, o.total_price, o.payment_method, o.status FROM orders o WHERE o.order_id = ?";
        OrderDetails orderDetails = jdbcTemplate.queryForObject(orderQuery, new Object[]{orderId}, new RowMapper<OrderDetails>() {
            @Override
            public OrderDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
                OrderDetails details = new OrderDetails();
                details.setOrderId(rs.getInt("order_id"));
                details.setTotalPrice(rs.getDouble("total_price"));
                details.setPaymentMethod(rs.getString("payment_method"));
                details.setStatus(rs.getString("status"));
                return details;
            }
        });

        // Retrieve order items
        String orderItemsQuery = "SELECT oi.book_id, oi.quantity, oi.price, oi.total_price, b.title FROM order_items oi " +
                "JOIN books b ON oi.book_id = b.book_id WHERE oi.order_id = ?";
        List<OrderItem> items = jdbcTemplate.query(orderItemsQuery, new Object[]{orderId}, new RowMapper<OrderItem>() {
            @Override
            public OrderItem mapRow(ResultSet rs, int rowNum) throws SQLException {
                OrderItem item = new OrderItem();
                item.setBookTitle(rs.getString("title"));
                item.setQuantity(rs.getInt("quantity"));
                item.setPrice(rs.getDouble("price"));
                item.setTotalPrice(rs.getDouble("total_price"));
                return item;
            }
        });

        orderDetails.setItems(items);
        return orderDetails;
    }

    // Update Payment status
    public void updatePaymentStatus(int orderId, String paymentStatus) {
        String query = "UPDATE payments SET payment_status = ? WHERE order_id = ?";
        jdbcTemplate.update(query, paymentStatus, orderId);
    }
}
*/
