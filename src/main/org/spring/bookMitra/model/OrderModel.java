package org.spring.bookMitra.model;

import java.util.List;

public class OrderModel {

    private int orderId;
    private List<BookModel> books;
    private String address;
    private String paymentMethod;

    public OrderModel() {}

    public OrderModel(List<BookModel> books, String address, String paymentMethod) {
        this.books = books;
        this.address = address;
        this.paymentMethod = paymentMethod;
    }

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
}
