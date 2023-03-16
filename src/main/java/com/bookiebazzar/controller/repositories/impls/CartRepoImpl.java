package com.bookiebazzar.controller.repositories.impls;

import java.util.ArrayList;
import java.util.List;

import com.bookiebazzar.controller.repositories.interfaces.CartRepo;
import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

public class CartRepoImpl implements CartRepo {

    @Override
    public boolean addCartItem(CartItem item, EntityManager entityManager) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'addCartItem'");
    }

    @Override
    public boolean removeCartItem(CartItem item, EntityManager entityManager) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'removeCartItem'");
    }

    @Override
    public List<CartItem> getUserCart(int userID, EntityManager entityManager) {
        TypedQuery<CartItem> query = entityManager
                .createQuery("select ci from User u LEFT JOIN u.CartItems ci where u.id = :id", CartItem.class);
        query.setParameter("id", userID);
        return query.getResultList();
    }

    @Override
    public boolean emptyUserCart(int userID, EntityManager entityManager) {
        User user = entityManager.find(User.class, userID);
        try {
            entityManager.getTransaction().begin();
            for (CartItem item : user.getCartItems()) {
                user.getCartItems().remove(item);
                entityManager.remove(item);
            }
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

}
