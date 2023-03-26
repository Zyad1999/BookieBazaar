package com.bookiebazzar.model.dtos;

public class CartItemDto {

    private int userId;

    private int quantity;

    private BookDto book;

    public CartItemDto(int userId, int quantity, BookDto book) {
        this.userId = userId;
        this.quantity = quantity;
        this.book = book;
    }

    public CartItemDto() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    @Override
    public String toString() {
        return "{" +
                "\"userId\":" + userId +
                ",\"quantity\":" + quantity +
                ",\"book\":" + book.toString() +
                "}";
    }
}
