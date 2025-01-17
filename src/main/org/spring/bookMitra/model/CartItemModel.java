package org.spring.bookMitra.model;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class CartItemModel {
    private BookModel book;
    private int quantity;

    // Constructor
    public CartItemModel(BookModel book, int quantity) {
        this.book = book;
        this.quantity = quantity;
    }

    // Getters and Setters
    public BookModel getBook() {
        return book;
    }

    public void setBook(BookModel book) {
        this.book = book;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    // Calculate total price for this cart item
    public double getTotalPrice() {
        return this.book.getPrice() * this.quantity;
    }

    // Add item to the cart
    public static void addCartItem(List<CartItemModel> cartItems, CartItemModel newItem) {
        // Check if the item already exists in the cart
        CartItemModel existingItem = cartItems.stream()
                .filter(item -> item.getBook().getBookId() == newItem.getBook().getBookId())
                .findFirst().orElse(null);

        if (existingItem != null) {
            // Update quantity if the item already exists
            existingItem.setQuantity(existingItem.getQuantity() + newItem.getQuantity());
        } else {
            // Add new item to the cart
            cartItems.add(newItem);
        }
    }

    // Remove item from the cart by bookId
    public static void removeCartItem(List<CartItemModel> cartItems, int bookId) {
        cartItems.removeIf(item -> item.getBook().getBookId() == bookId);
    }

    // Update item quantity in the cart
    public static void updateQuantity(List<CartItemModel> cartItems, int bookId, int newQuantity) {
        CartItemModel cartItem = cartItems.stream()
                .filter(item -> item.getBook().getBookId() == bookId)
                .findFirst().orElse(null);

        if (cartItem != null) {
            cartItem.setQuantity(newQuantity);
        }
    }
}
