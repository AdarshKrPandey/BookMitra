package org.spring.bookMitra.dao.impl;

import org.spring.bookMitra.dao.BookDao;
import org.spring.bookMitra.model.BookModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class BookDaoImpl  implements BookDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    //        add book
    @Override
    public void saveBook(BookModel book) {
        String sql = "INSERT INTO books (book_id, book_title, author, category, price, description, quantity) VALUES (?, ?, ?, ?, ?, ?, ?)";

        jdbcTemplate.update(sql,
                book.getBookId(),
                book.getBookTitle(),
                book.getAuthor(),
                book.getCategory(),
                book.getPrice(),
                book.getDescription(),
                book.getQuantity()
        );
    }

    //  show all Book data
    @Override
    public List<BookModel> findAllBooks() {
        String sql = "select * from books";
        return jdbcTemplate.query(sql, new RowMapper<BookModel>() {
            @Override
            public BookModel mapRow(ResultSet rs, int rowNum) throws SQLException {
                BookModel book = new BookModel();
                book.setBookId(rs.getInt("book_id"));
                book.setBookTitle(rs.getString("book_title"));
                book.setAuthor(rs.getString("author"));
                book.setCategory(rs.getString("category"));
                book.setPrice(rs.getInt("price"));
                book.setDescription(rs.getString("description"));
                book.setQuantity(rs.getInt("quantity"));
                return book;
            }
        });
    }

    //  book Delete
    @Override
    public String deleteBook(int bookId) {
        jdbcTemplate.update("delete from books where book_id = ?", bookId);
        return bookId + " book deleted Successfully";
    }


    //  update book details
    @Override
    public BookModel updateBook(int bookId, BookModel book) {
        String sql = "update books set book_title=?,author=?,category=?,price=?,description=?,quantity=? where book_id=?";
        jdbcTemplate.update(sql, book.getBookTitle(), book.getAuthor(), book.getCategory(), book.getPrice(), book.getDescription(), book.getQuantity(),bookId);
        return book;
    }



    @Override
    public List<BookModel> searchBooks(String query) {
        String searchBooksSql = "SELECT *FROM books WHERE book_title LIKE ?  OR author LIKE ?";
       // System.out.println(query);
        return jdbcTemplate.query(searchBooksSql, new Object[]{"%" + query + "%", "%" + query + "%"},
                new BeanPropertyRowMapper<>(BookModel.class));
    }

    @Override
    public BookModel getBookById(int bookId) {
//        ????????????
        return null;
    }


//    cart things




}
