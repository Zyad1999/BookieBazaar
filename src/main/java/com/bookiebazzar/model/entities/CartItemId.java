package com.bookiebazzar.model.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class CartItemId {

    @Column(name = "user_id")
    private int userId;

    @Column(name = "book_id")
    private int bookId;

    public int getUserId() {
        return userId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }
    
}
