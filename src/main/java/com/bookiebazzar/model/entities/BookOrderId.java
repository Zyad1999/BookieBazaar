package com.bookiebazzar.model.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class BookOrderId {
    
    @Column(name = "order_id")
    private int orderId;

    @Column(name = "book_id")
    private int bookId;

    public int getOrderId() {
        return orderId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }
}
