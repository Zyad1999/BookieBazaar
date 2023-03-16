package com.bookiebazzar.controller.repositories.impls;

import java.util.List;
import com.bookiebazzar.controller.repositories.interfaces.UserRepo;
import com.bookiebazzar.model.entities.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

public class UserRepoImpl implements UserRepo {

    private EntityManagerFactory entityManagerFactory;
    private EntityManager entityManager;

    public UserRepoImpl() {

        entityManagerFactory = Persistence.createEntityManagerFactory("main");
        entityManager = entityManagerFactory.createEntityManager();

    }

    public void closeResource() {
        entityManager.close();
        entityManagerFactory.close();
    }

    @Override
    public int addUser(User user) {

        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        entityManager.persist(user.getAdress());
        entityManager.persist(user);
        entityTransaction.commit();
        entityManager.refresh(user);
        return 1;
    }

    @Override
    public boolean updateUser(User user) {
        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        entityManager.merge(user);
        entityTransaction.commit();
        return true;
    }

    @Override
    public User findUserByEmail(String email) {
        Query query = entityManager.createQuery("select u from User u where u.email=:email");
        query.setParameter("email", email);
        return (User) query.getSingleResult();
    }

    @Override
    public User findUserById(int id) {
        User user = entityManager.find(User.class, id);
        return user;
    }

    @Override
    public List<User> getAllUsers() {
        Query query = entityManager.createQuery("select u from User u");
        return (List<User>) query.getResultList();
    }

    @Override
    public boolean makeUserAdmin(int userId) {
        EntityTransaction entityTransaction = entityManager.getTransaction();
        User userTemp = findUserById(userId);
        entityTransaction.begin();
        userTemp.setAdmin(true);
        entityTransaction.commit();
        return true;
    }

}
