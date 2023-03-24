package com.bookiebazzar.controller.repositories.impls;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;

import com.bookiebazzar.controller.repositories.interfaces.OrderRepo;
import com.bookiebazzar.model.entities.BookOrder;
import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.model.entities.UserOrder;
import com.bookiebazzar.utils.objects.ValidationMsg;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

public class OrderRepoImpl implements OrderRepo {

    ValidationMsg validationMsg;

    @Override
    public ValidationMsg createNewOrder(int userID, EntityManager entityManager) {
        int sum = 0;
        LocalDateTime now = LocalDateTime.now();
        User user = entityManager.find(User.class, userID);
        if (user == null) {
            validationMsg = new ValidationMsg(1, "User does not exist");
            return validationMsg;
        }
        Set<CartItem> setOfCartItem = user.getCartItems();
        if (setOfCartItem.size() == 0) {
            validationMsg = new ValidationMsg(1, "Cart is empty");
            return validationMsg;
        }
        UserOrder userOrder = new UserOrder();
        userOrder.setCreatedAt(now);
        userOrder.setUser(user);
        for (CartItem cartItem : setOfCartItem) {
            if (cartItem.getQuantity() <= cartItem.getBook().getQuantity()) {
                sum += cartItem.getBook().getPrice() * cartItem.getQuantity();
                BookOrder bookOrder = new BookOrder();
                bookOrder.setOrder(userOrder);
                bookOrder.setBook(cartItem.getBook());
                bookOrder.setQuantity(cartItem.getQuantity());
                userOrder.getBookOrders().add(bookOrder);
                bookOrder.getBook().setQuantity(bookOrder.getBook().getQuantity() - bookOrder.getQuantity());
            } else {
                validationMsg = new ValidationMsg(1, "The available quantity of " + cartItem.getBook().getName()
                        + " Book is " + cartItem.getBook().getQuantity());
                return validationMsg;
            }
        }
        userOrder.setTotalPrice(sum);
        if (sum < user.getCreditLimit()) {
            EntityTransaction entityTransaction = entityManager.getTransaction();
            entityTransaction.begin();
            user.setCreditLimit(user.getCreditLimit() - sum);
            entityManager.persist(userOrder);

            Query query = entityManager.createQuery("DELETE FROM CartItem ci WHERE ci.user.id = :id");
            query.setParameter("id", userID);
            int rowsDeleted = query.executeUpdate();

            entityTransaction.commit();
            validationMsg = new ValidationMsg(0, "succeeded");
        } else {
            validationMsg = new ValidationMsg(1, "There is no enough money in the credit");
        }
        return validationMsg;
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

    @Override
    public List<UserOrder> getAllOrders(EntityManager entityManager) {
        TypedQuery<UserOrder> query = entityManager
                .createQuery("select uo from UserOrder uo", UserOrder.class);
        return query.getResultList();

    }

}
