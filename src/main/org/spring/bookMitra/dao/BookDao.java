package org.spring.bookMitra.dao;

import org.spring.bookMitra.model.BookModel;

import java.util.List;

public interface BookDao {

    //      Inseting the Book
    void saveBook(BookModel book);

    //      Showing  all Books
    List<BookModel> findAllBooks();

    //          Delete Book
    String deleteBook(int bookId);

    //          Update Book
    BookModel updateBook(int bookId, BookModel book);

    //      Searching Book
    List<BookModel> searchBooks(String query);

    //       get Book  By ID
    BookModel getBookById(int bookId);
}
