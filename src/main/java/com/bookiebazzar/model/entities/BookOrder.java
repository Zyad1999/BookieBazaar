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

@Entity(name = "BOOK_ORDER")
public class BookOrder implements Serializable {

    @EmbeddedId
    private BookOrderId id = new BookOrderId();

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.REFRESH)
    @MapsId("orderId")
    @JoinColumn(name = "order_id")
    private UserOrder order;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.REFRESH)
    @MapsId("bookId")
    @JoinColumn(name = "book_id")
    private Book book;

    @Column(name = "quantity", nullable = false)
    private int quantity;

    public BookOrderId getId() {
        return id;
    }

    public void setId(BookOrderId id) {
        this.id = id;
    }

    public UserOrder getOrder() {
        return order;
    }

    public void setOrder(UserOrder order) {
        this.order = order;
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
}
