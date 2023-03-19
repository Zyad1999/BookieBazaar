package com.bookiebazzar.controller.repositories.impls;

import java.util.List;
import com.bookiebazzar.controller.repositories.interfaces.UserRepo;
import com.bookiebazzar.model.entities.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.NoResultException;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;

public class UserRepoImpl implements UserRepo {

    public UserRepoImpl() {

    }

    @Override
    public int addUser(User user, EntityManager entityManager) {
        int userID = -1;
        try {
            EntityTransaction entityTransaction = entityManager.getTransaction();
            entityTransaction.begin();
            user.getAdress().setUser(user);
            entityManager.persist(user);
            entityTransaction.commit();
            userID = user.getId();
        }catch (Exception e){
            System.out.println(e);
        }
        return userID;
    }

    @Override
    public boolean updateUser(User user, EntityManager entityManager) {

        try {
            EntityTransaction entityTransaction = entityManager.getTransaction();
            entityTransaction.begin();
            entityManager.merge(user);
            // entityManager.persist(user.getAdress());
            entityTransaction.commit();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    @Override
    public User findUserByEmail(String email, EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u where u.email=:email");
            query.setParameter("email", email);
            return (User) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public User findUserById(int id, EntityManager entityManager) {

        User user = entityManager.find(User.class, id);
        if (user != null) {
            return user;
        } else {
            return null;
        }
    }

    @Override
    public List<User> getAllUsers(EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u");
            return (List<User>) query.getResultList();
        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public boolean makeUserAdmin(int userId, EntityManager entityManager) {
        try {
            EntityTransaction entityTransaction = entityManager.getTransaction();
            User userTemp = findUserById(userId, entityManager);
            entityTransaction.begin();
            userTemp.setAdmin(true);
            entityTransaction.commit();
            return true;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return false;
        }

    }

    @Override
    public User findUserByUserName(String userName, EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u where u.userName=:userName");
            query.setParameter("userName", userName);
            return (User) query.getSingleResult();

        } catch (NoResultException e) {
            return null;
        }
    }

    @Override
    public boolean checkEmailAvailability(String email, EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u where u.email=:email");
            query.setParameter("email", email);
            User user = (User) query.getSingleResult();
            return true;
        } catch (NoResultException e) {
            return false;
        }
    }

    @Override
    public boolean checkUserNameAvailability(String userName, EntityManager entityManager) {
        try {
            Query query = entityManager.createQuery("select u from User u where u.userName=:userName");
            query.setParameter("userName", userName);
            System.out.println("return is " + query.getSingleResult());
            User user = (User) query.getSingleResult();
            return true;
        } catch (NoResultException e) {
            return false;
        }
    }

}
