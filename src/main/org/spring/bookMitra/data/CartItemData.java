package org.spring.bookMitra.data;

import org.spring.bookMitra.model.BookModel;

public class CartItemData {

    private BookModel book;
    private int quantity;

    public CartItemData(int quantity, BookModel book) {
        this.quantity = quantity;
        this.book = book;
    }

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

    @Override
    public String toString() {
        return "CartItemData{" +
                "book=" + book +
                ", quantity=" + quantity +
                '}';
    }
}
