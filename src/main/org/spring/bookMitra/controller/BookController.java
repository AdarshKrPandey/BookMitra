package org.spring.bookMitra.controller;

import org.spring.bookMitra.dao.BookDao;
import org.spring.bookMitra.model.BookModel;
import org.spring.bookMitra.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class BookController {

    @Autowired
    BookDao bookDao;

    @Autowired
    BookService bookService;

    @GetMapping("/books")
    public String showBooks(Model model) {
        List<BookModel> books = bookService.getAllBooks();  // Fetch books from the service
        model.addAttribute("books", books);  // Add books to the model
        return "books";  // Return the name of the JSP view (books.jsp)
    }

    //          show add Book form
    @RequestMapping(value = "/addBook", method = RequestMethod.GET)
    public String showAddBookForm(Model model) {
        model.addAttribute("book", new BookModel());
        return "addBook";
    }

    //          add Book in database
    @PostMapping("/addBook")
    public String addBook(@ModelAttribute("book") BookModel book, RedirectAttributes reattributes) {
        bookDao.saveBook(book);
        reattributes.addFlashAttribute("success", "Book added successfully");
        return "redirect:/addBook";
    }


    //          show Books Details
    @GetMapping("/bookDetail")
    public String showBookDetail(Model model) {

        List<BookModel> bookDetails = bookDao.findAllBooks();
        model.addAttribute("book", bookDetails);
        System.out.println("Details: " + bookDetails);
        return "bookDetail";
    }


    //       Delete Book from database
    @PostMapping(value = "/delete/{bookId}")
    public String deleteBook(@PathVariable("bookId") int bookId, RedirectAttributes attrs) {
        String msg = bookDao.deleteBook(bookId);
        attrs.addFlashAttribute("resultMsg", msg);
        return "redirect:/bookDetail";  // Redirect to book details page
    }

    //          show Edit Form
    @GetMapping("/editBook/{bookId}")
    public String editUser(@PathVariable("bookId") int bookId, Model model) {
        model.addAttribute("book", new BookModel());
        return "updateBook";
    }


    //          update Book details
    @PostMapping("/editBook/{bookId}")
    public String updateBook(@PathVariable("bookId") int bookId, @ModelAttribute("book") BookModel book, RedirectAttributes attrs) {
        book.setBookId(bookId);
        bookDao.updateBook(bookId, book);
        attrs.addFlashAttribute("resultMsg", "Book updated successfully.");
        return "redirect:/bookDetail";
    }


        //      Book Search
    @GetMapping("/search")
    public String search(@RequestParam("query") String query,Model model) {
       // System.out.println(query);
        List<BookModel> books =bookDao.searchBooks(query);
//        System.out.println(books);
//        System.out.println(query);
        model.addAttribute("books", books);
        model.addAttribute("query", query);
        return "bookById";
    }







    }
