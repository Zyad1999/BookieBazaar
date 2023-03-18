package com.bookiebazzar.model.dtos;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;
public class UserOrderDto implements Serializable {

    private int id;

    private LocalDateTime createdAt;

    private int totalPrice;

    private int userId;

    private Set<BookOrderDto> BookOrders = new HashSet<BookOrderDto>();

    public UserOrderDto(int id, LocalDateTime createdAt, int totalPrice, int userId, Set<BookOrderDto> bookOrders) {
        this.id = id;
        this.createdAt = createdAt;
        this.totalPrice = totalPrice;
        this.userId = userId;
        BookOrders = bookOrders;
    }

    public UserOrderDto(int id, LocalDateTime createdAt, int totalPrice, int userId) {
        this.id = id;
        this.createdAt = createdAt;
        this.totalPrice = totalPrice;
        this.userId = userId;
    }

    public UserOrderDto() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Set<BookOrderDto> getBookOrders() {
        return BookOrders;
    }

    public void setBookOrders(Set<BookOrderDto> bookOrders) {
        BookOrders = bookOrders;
    }

}
