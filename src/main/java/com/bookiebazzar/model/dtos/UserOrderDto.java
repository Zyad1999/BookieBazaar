package com.bookiebazzar.model.dtos;

import java.io.Serializable;
import java.time.LocalDateTime;

public class UserOrderDto implements Serializable {

    private int id;

    private LocalDateTime createdAt;

    private int totalPrice;

    private UserDto user;

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

}
