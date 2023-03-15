package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.UserOrder;

public interface OrderRepo {
    
    public int createNewOrder(int userID);

    public List<UserOrder> getUserOrders(int userID);

    public List<CartItem> getOrderItems(int orderID);

    public UserOrder getOrder(int orderID);
}
