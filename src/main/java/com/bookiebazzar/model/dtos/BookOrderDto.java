package com.bookiebazzar.model.dtos;

import java.io.Serializable;

public class BookOrderDto implements Serializable {

    private int orderId;

    private int bookId;

    private int quantity;

    private BookDto book;

    public BookOrderDto(int orderId, int bookId, int quantity, BookDto book) {
        this.orderId = orderId;
        this.bookId = bookId;
        this.quantity = quantity;
        this.book = book;
    }

    public BookOrderDto() {
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BookDto getBook() {
        return book;
    }

    public void setBook(BookDto book) {
        this.book = book;
    }

}
