package com.bookiebazzar.model.dtos;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;
public class UserOrderDto implements Serializable {

    private int id;

    private LocalDateTime createdAt;

    private int totalPrice;

    private UserDto user;

    private Set<BookOrderDto> BookOrders = new HashSet<BookOrderDto>();

    public UserOrderDto(int id, LocalDateTime createdAt, int totalPrice, UserDto user, Set<BookOrderDto> bookOrders) {
        this.id = id;
        this.createdAt = createdAt;
        this.totalPrice = totalPrice;
        this.user = user;
        BookOrders = bookOrders;
    }

    public UserOrderDto(int id, LocalDateTime createdAt, int totalPrice, UserDto user) {
        this.id = id;
        this.createdAt = createdAt;
        this.totalPrice = totalPrice;
        this.user = user;
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

    public UserDto getUser() {
        return user;
    }

    public void setUser(UserDto user) {
        this.user = user;
    }

    public Set<BookOrderDto> getBookOrders() {
        return BookOrders;
    }

    public void setBookOrders(Set<BookOrderDto> bookOrders) {
        BookOrders = bookOrders;
    }

}
