package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.BookOrder;
import com.bookiebazzar.model.entities.UserOrder;
import com.bookiebazzar.utils.objects.ValidationMsg;

import jakarta.persistence.EntityManager;

public interface OrderRepo {
    
    public ValidationMsg createNewOrder(int userID, EntityManager entityManager);

    public List<UserOrder> getUserOrders(int userID, EntityManager entityManager);

    public List<BookOrder> getOrderItems(int orderID, EntityManager entityManager);

    public UserOrder getOrder(int orderID, EntityManager entityManager);
}
