package org.spring.bookMitra.facade;

import jakarta.servlet.http.HttpSession;
import org.spring.bookMitra.model.BookModel;
import org.spring.bookMitra.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class BookFacadeImpl implements BookFacade {

    @Autowired
    BookService bookService;


    @Override
    public List<BookModel> getAllBooks() {
        return bookService.getAllBooks();
    }

    @Override
    public void addBookToCart(Integer bookId, HttpSession session) {
    bookService.addBookToCart(bookId, session);
    }

    @Override
    public void removeFromCart(int bookId, HttpSession session) {
bookService.removeFromCart(bookId, session);
    }

    @Override
    public void updateCartQuantity(int bookId, int quantity, HttpSession session) {
    bookService.updateCartQuantity(bookId, quantity, session);
    }

    @Override
    public BookModel getBookById(Integer bookId) {

        return  bookService.getBookById(bookId);
    }
}
