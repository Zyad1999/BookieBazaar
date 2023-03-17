package com.bookiebazzar.controller.repositories.impls;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;

import com.bookiebazzar.controller.repositories.interfaces.OrderRepo;
import com.bookiebazzar.model.entities.BookOrder;
import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.model.entities.UserOrder;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class OrderRepoImpl implements OrderRepo {

    @Override
    public int createNewOrder(int userID, EntityManager entityManager) {
        int sum = 0;
        LocalDateTime now = LocalDateTime.now();
        CartRepoImpl cartRepoImpl = new CartRepoImpl();
        User user = entityManager.find(User.class, userID);
        Set<CartItem> setOfCartItem = user.getCartItems();
        UserOrder userOrder = new UserOrder();
        userOrder.setCreatedAt(now);
        userOrder.setUser(user);
        for (CartItem cartItem : setOfCartItem) {
            sum += cartItem.getBook().getPrice() * cartItem.getQuantity();
            BookOrder bookOrder = new BookOrder();
            bookOrder.setOrder(userOrder);
            bookOrder.setBook(cartItem.getBook());
            bookOrder.setQuantity(cartItem.getQuantity());
            userOrder.getBookOrders().add(bookOrder);
        }
        userOrder.setTotalPrice(sum);

        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        entityManager.persist(userOrder);
        cartRepoImpl.emptyUserCart(userID, entityManager);
        entityTransaction.commit();

        return 0;
    }

    @Override
    public List<UserOrder> getUserOrders(int userID, EntityManager entityManager) {
        TypedQuery<UserOrder> query = entityManager
                .createQuery("select uo from UserOrder uo where uo.user.id = :id", UserOrder.class);
        query.setParameter("id", userID);
        return query.getResultList();
    }

    @Override
    public List<BookOrder> getOrderItems(int orderID, EntityManager entityManager) {

        TypedQuery<BookOrder> query = entityManager
                .createQuery("select bo from BookOrder bo where bo.order.id = :id", BookOrder.class);
        query.setParameter("id", orderID);
        return query.getResultList();
    }

    @Override
    public UserOrder getOrder(int orderID, EntityManager entityManager) {
        UserOrder order = entityManager.find(UserOrder.class, orderID);

        return order;
    }

}
