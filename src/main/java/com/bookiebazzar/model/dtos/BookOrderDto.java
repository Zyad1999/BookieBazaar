package com.bookiebazzar.model.dtos;

import java.io.Serializable;

public class BookOrderDto implements Serializable {

    private int orderId;

    private int quantity;

    private BookDto book;

    public BookOrderDto(int orderId, int quantity, BookDto book) {
        this.orderId = orderId;
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
