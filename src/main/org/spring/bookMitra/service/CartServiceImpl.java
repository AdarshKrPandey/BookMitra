package org.spring.bookMitra.service;

import org.spring.bookMitra.model.BookModel;
import org.spring.bookMitra.model.CartItemModel;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;

@Service
public class CartServiceImpl implements CartService {

    private final BookService bookService;

    public CartServiceImpl(BookService bookService) {
        this.bookService = bookService;
    }

    // Add book to cart
    public void addBookToCart(Integer bookId, HttpSession session) {
        List<CartItemModel> cart = (List<CartItemModel>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }

        // Check if the book is already in the cart
        CartItemModel existingItem = cart.stream()
                .filter(item -> item.getBook().getBookId().equals(bookId))
                .findFirst().orElse(null);

        if (existingItem != null) {
            existingItem.setQuantity(existingItem.getQuantity() + 1);
        } else {
            BookModel book = bookService.getBookById(bookId);
            if (book != null) {
                cart.add(new CartItemModel(book, 1));
            }
        }

        session.setAttribute("cart", cart);
    }

    // Update cart item quantity
    public void updateCartItemQuantity(Integer bookId, int quantity, HttpSession session) {
        List<CartItemModel> cart = (List<CartItemModel>) session.getAttribute("cart");
        if (cart != null) {
            cart.stream()
                    .filter(item -> item.getBook().getBookId().equals(bookId))
                    .findFirst()
                    .ifPresent(item -> item.setQuantity(quantity));
        }
    }

    // Remove book from cart
    public void removeBookFromCart(Integer bookId, HttpSession session) {
        List<CartItemModel> cart = (List<CartItemModel>) session.getAttribute("cart");
        if (cart != null) {
            cart.removeIf(item -> item.getBook().getBookId().equals(bookId));
        }
    }

    // Get all cart items
    public List<CartItemModel> getCartItems(HttpSession session) {
        return (List<CartItemModel>) session.getAttribute("cart");
    }

    // Calculate the total price of items in the cart

    public double calculateTotalPrice(HttpSession session) {
        List<CartItemModel> cartItems = getCartItems(session);
        return cartItems.stream().mapToDouble(CartItemModel::getTotalPrice).sum();
    }
}
