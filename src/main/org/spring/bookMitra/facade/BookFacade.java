package org.spring.bookMitra.facade;

import jakarta.servlet.http.HttpSession;
import org.spring.bookMitra.model.BookModel;

import java.util.List;

public interface BookFacade {

    //   get all Book
    public List<BookModel> getAllBooks();
    //          Add to Cart
    public void addBookToCart(Integer bookId, HttpSession session);
    //     Remove to Cart
    public void removeFromCart(int bookId, HttpSession session) ;
    //      Update Cart Quantity
    public void updateCartQuantity(int bookId, int quantity, HttpSession session);
    //      get Book by Id
    public BookModel getBookById(Integer bookId);
}
