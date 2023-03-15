package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.User;

public interface UserRepo {
    
    public int addUser(User user);

    public boolean updateUser(User user);

    public User findUserByEmail(String email);

    public User findUserById(int id);

    public List<User> getAllUsers();

    public boolean makeUserAdmin(int userId);
}
