package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.CartItem;

import jakarta.persistence.EntityManager;

public interface CartRepo {
    
    public boolean addCartItem(CartItem item, EntityManager entityManager);

    public boolean removeCartItem(CartItem item, EntityManager entityManager);

    public List<CartItem> getUserCart(int userID, EntityManager entityManager);

    public boolean emptyUserCart(int userID, EntityManager entityManager);
    
}
