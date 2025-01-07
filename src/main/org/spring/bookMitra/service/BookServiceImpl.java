package org.spring.bookMitra.service;

import org.spring.bookMitra.dao.BookDao;
import org.spring.bookMitra.model.BookModel;
import org.spring.bookMitra.model.CartItemModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class BookServiceImpl implements BookService {

//@Autowired
//BookService bookService;

    @Autowired
    private BookDao bookDao;

    private List<BookModel> books = new ArrayList<>();

    // Constructor to initialize the book list
    public BookServiceImpl() {
        books.add(new BookModel(1, "Destiny of a Fable", "Fabulista of Ancient Greece, known by the creation of a great amount of fables of educative nature, generally carried out by animals.", "Fiction", 1200, "A great fable of wisdom and life.", 10, "fiction5.jpg"));
        books.add(new BookModel(2, "The Lost of Forgotten", "Set in Barcelona during the twentieth-century, Zafón’s web of multigenerational characters navigate the sprawling streets of the city.", "Fiction", 1500, "A classic lost in time.", 8, "fiction4.jpg"));
        books.add(new BookModel(3, "Gaban", "Gaban is a cult classic satire of Premchand. It tells the story of Ramanath, who is handsome, pleasure-seeking, boastful, and morally weak.", "Literature", 1800, "A satire on human nature.", 5, "gaban.webp"));
        books.add(new BookModel(4, "Godan", "Gonads are the reproductive organs responsible for producing and releasing eggs in females and sperm in males", "Education", 2000, "A deep dive into biology.", 7, "Godan.jpg"));
    }


    public List<BookModel> getAllBooks() {
        return books;
    }

    @Override
    public void addBookToCart(Integer bookId, HttpSession session) {
        List<CartItemModel> cart = (List<CartItemModel>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
            session.setAttribute("cart", cart);
        }

        // Check if the book is already in the cart
        Optional<CartItemModel> existingItem = cart.stream()
                .filter(item -> item.getBook().getBookId().equals(bookId))
                .findFirst();

        if (existingItem.isPresent()) {
            // Increment quantity if the book is already in the cart
            existingItem.get().setQuantity(existingItem.get().getQuantity() + 1);
        } else {
            // Add new book to the cart
            BookModel book = bookDao.getBookById(bookId);
            if (book != null) {
                cart.add(new CartItemModel(book, 1));
            }
        }

        // Update session with the new cart state
        session.setAttribute("cart", cart);
    }


    @Override
    public void removeFromCart(int bookId, HttpSession session) {
        List<CartItemModel> cartItems = (List<CartItemModel>) session.getAttribute("cart");
        if (cartItems != null) {
            CartItemModel.removeCartItem(cartItems, bookId);
        }
    }


    public void updateCartQuantity(int bookId, int quantity, HttpSession session) {
        List<CartItemModel> cartItems = (List<CartItemModel>) session.getAttribute("cart");
        if (cartItems != null) {
            CartItemModel.updateQuantity(cartItems, bookId, quantity);
        }
    }


    public BookModel getBookById(Integer bookId) {
        return books.stream()
                .filter(book -> Objects.equals(book.getBookId(), bookId))
                .findFirst()
                .orElse(null);
    }
}
