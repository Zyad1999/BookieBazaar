package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.CartItem;

public interface CartRepo {
    
    public boolean addCartItem(CartItem item);

    public boolean removeCartItem(CartItem item);

    public List<CartItem> getUserCart(int userID);

    public boolean emptyUserCart(int userID);
    
}
