package org.spring.bookMitra.service;

import jakarta.servlet.http.HttpSession;
import org.spring.bookMitra.model.CartItemModel;

import java.util.List;

public interface CartService  {

    // Add book to cart
    public void addBookToCart(Integer bookId, HttpSession session);

    // Update cart item quantity
    public void updateCartItemQuantity(Integer bookId, int quantity, HttpSession session);

    // Remove book from cart
    public void removeBookFromCart(Integer bookId, HttpSession session);

    // Get all cart items
    public List<CartItemModel> getCartItems(HttpSession session);

    // Calculate the total price of items in the cart
    public double calculateTotalPrice(HttpSession session);
}
