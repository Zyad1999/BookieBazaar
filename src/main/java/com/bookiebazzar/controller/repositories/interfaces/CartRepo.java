package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.CartItem;

import jakarta.persistence.EntityManager;

public interface CartRepo {
    
    public boolean addCartItem(CartItem item, EntityManager entityManager);

    public boolean removeCartItem(int userId, int bookId, EntityManager entityManager);

    public boolean changeItemQuantity(CartItem item, EntityManager entityManager);

    public List<CartItem> getUserCart(int userID, EntityManager entityManager);

    public boolean emptyUserCart(int userID, EntityManager entityManager);

    public CartItem getCartItem(int userId, int bookId, EntityManager entityManager);
    
}
