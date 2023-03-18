package com.bookiebazzar.controller.repositories.impls;

import java.util.List;

import com.bookiebazzar.controller.repositories.interfaces.CartRepo;
import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.CartItemId;

import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

public class CartRepoImpl implements CartRepo {

    @Override
    public boolean addCartItem(CartItem item, EntityManager entityManager) {
        try {
            entityManager.getTransaction().begin();
            entityManager.merge(item);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    @Override
    public boolean removeCartItem(int userId, int bookId, EntityManager entityManager) {
        try {
            entityManager.getTransaction().begin();
            Query query = entityManager
                    .createQuery("DELETE FROM CartItem ci WHERE ci.user.id = :userId and ci.book.id = :bookId");
            query.setParameter("userId", userId);
            query.setParameter("bookId", bookId);
            query.executeUpdate();
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    @Override
    public List<CartItem> getUserCart(int userID, EntityManager entityManager) {
        try {
            TypedQuery<CartItem> query = entityManager
                    .createQuery("select ci from CartItem ci where ci.user.id = :id", CartItem.class);
            query.setParameter("id", userID);
            return query.getResultList();
        } catch (NoResultException ne) {
            return null;
        }catch(Exception e){
            System.out.println(e);
            return null;
        }
    }

    @Override
    public boolean emptyUserCart(int userID, EntityManager entityManager) {
        try {
            entityManager.getTransaction().begin();
            Query query = entityManager.createQuery("DELETE FROM CartItem ci WHERE ci.user.id = :id");
            query.setParameter("id", userID);
            int rowsDeleted = query.executeUpdate();
            System.out.println(rowsDeleted);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    @Override
    public boolean changeItemQuantity(CartItem item, EntityManager entityManager) {
        if (item.getQuantity() <= 0) {
            removeCartItem(item.getUser().getId(), item.getBook().getId(), entityManager);
            return true;
        }
        CartItem cartItem = getCartItem(item.getUser().getId(), item.getBook().getId(), entityManager);
        if (cartItem.getBook().getQuantity() < item.getQuantity()) {
            return false;
        }
        cartItem.setQuantity(item.getQuantity());
        try {
            entityManager.getTransaction().begin();
            entityManager.merge(cartItem);
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    @Override
    public CartItem getCartItem(int userId, int bookId, EntityManager entityManager) {
        return entityManager.find(CartItem.class, new CartItemId(userId, bookId));
    }

}
