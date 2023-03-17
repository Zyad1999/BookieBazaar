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

   

    public UserRepoImpl() {


    }

    public void closeResource(EntityManager entityManager) {
        entityManager.close();
    }

    @Override
    public int addUser(User user, EntityManager entityManager) {

        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        entityManager.persist(user.getAdress());
        entityManager.persist(user);
        entityTransaction.commit();
        entityManager.refresh(user);
        return 1;
    }

    @Override
    public boolean updateUser(User user,EntityManager entityManager) {
        EntityTransaction entityTransaction = entityManager.getTransaction();
        entityTransaction.begin();
        entityManager.merge(user);
        entityTransaction.commit();
        return true;
    }

    @Override
    public User findUserByEmail(String email,EntityManager entityManager) {
        Query query = entityManager.createQuery("select u from User u where u.email=:email");
        query.setParameter("email", email);
        return (User) query.getSingleResult();
    }

    @Override
    public User findUserById(int id,EntityManager entityManager) {
        User user = entityManager.find(User.class, id);
        return user;
    }

    @Override
    public List<User> getAllUsers(EntityManager entityManager) {
        Query query = entityManager.createQuery("select u from User u");
        return (List<User>) query.getResultList();
    }

    @Override
    public boolean makeUserAdmin(int userId,EntityManager entityManager) {
        EntityTransaction entityTransaction = entityManager.getTransaction();
        User userTemp = findUserById(userId,entityManager);
        entityTransaction.begin();
        userTemp.setAdmin(true);
        entityTransaction.commit();
        return true;
    }
    
    @Override
    public User findUserByUserName(String userName, EntityManager entityManager) {
        Query query = entityManager.createQuery("select u from User u where u.userName=:userName");
        query.setParameter("userName", userName);
        return (User) query.getSingleResult();
    }


}
