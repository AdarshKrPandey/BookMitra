package org.spring.bookMitra.data;

import org.spring.bookMitra.model.BookModel;

import java.util.List;

public class OrderData {

    private int orderId;
    private List<BookModel> books;
    private String address;
    private String paymentMethod;

    public OrderData(int orderId, List<BookModel> books, String address, String paymentMethod) {
        this.orderId = orderId;
        this.books = books;
        this.address = address;
        this.paymentMethod = paymentMethod;
    }
     public OrderData() {}

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public List<BookModel> getBooks() {
        return books;
    }

    public void setBooks(List<BookModel> books) {
        this.books = books;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    @Override
    public String toString() {
        return "OrderData{" +
                "orderId=" + orderId +
                ", books=" + books +
                ", address='" + address + '\'' +
                ", paymentMethod='" + paymentMethod + '\'' +
                '}';
    }
}
