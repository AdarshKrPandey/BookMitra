package org.spring.bookMitra.service;

import org.spring.bookMitra.model.BookModel;

import jakarta.servlet.http.HttpSession;
import java.util.List;

public interface BookService {
        //   get Dall Book
    public List<BookModel> getAllBooks();
    //          Add to Cart

    public void addBookToCart(Integer bookId, HttpSession session);
      //     Remove to Cart
    public void removeFromCart(int bookId, HttpSession session) ;
    //      Update Cart Quantity
    public void updateCartQuantity(int bookId, int quantity, HttpSession session);

    public BookModel getBookById(Integer bookId);
}
