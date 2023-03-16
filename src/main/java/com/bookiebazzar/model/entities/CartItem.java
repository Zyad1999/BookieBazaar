package com.bookiebazzar.model.entities;

import java.io.Serializable;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;


@Entity(name = "CART_ITEM")
public class CartItem implements Serializable {

    @EmbeddedId
    private CartItemId id = new CartItemId();

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.REFRESH)
    @MapsId("userId")
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.REFRESH)
    @MapsId("bookId")
    @JoinColumn(name = "book_id")
    private Book book;

    public CartItem(User user, Book book, int quantity) {
        this.user = user;
        this.book = book;
        this.quantity = quantity;
    }

    public CartItem() {
    }

    @Column(name = "quantity", nullable = false)
    private int quantity;

    public CartItemId getId() {
        return id;
    }

    public void setId(CartItemId id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
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
        return "CartItem [id=" + id + ", user=" + user + ", book=" + book + ", quantity=" + quantity + "]";
    }

    
}
