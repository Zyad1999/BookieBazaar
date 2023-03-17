package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.User;

import jakarta.persistence.EntityManager;

public interface UserRepo {
    
    public int addUser(User user,EntityManager entityManager);

    public boolean updateUser(User user,EntityManager entityManager);

    public User findUserByEmail(String email,EntityManager entityManager);

    public User findUserById(int id, EntityManager entityManager);

    public List<User> getAllUsers(EntityManager entityManager);

    public boolean makeUserAdmin(int userId, EntityManager entityManager);

    public User findUserByUserName(String userName, EntityManager entityManager);
}
