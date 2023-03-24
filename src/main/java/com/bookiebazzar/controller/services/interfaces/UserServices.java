package com.bookiebazzar.controller.services.interfaces;

import java.util.List;

import com.bookiebazzar.model.dtos.UserDto;

import jakarta.persistence.EntityManager;

public interface UserServices {
    
    public UserDto getUserById(int userId, EntityManager em);
    public List<UserDto> getAllUsers( EntityManager em);
    public boolean makeUserAdmin(int userId,EntityManager em);
    


    UserDto userLogin(String email, String password, EntityManager em);

    UserDto userSignup(UserDto user,String hashedPassword, String salt, EntityManager em);

    boolean updateUser(UserDto userDto, EntityManager em);

    boolean updateUserPassword(int userId, String password, String newPassword, EntityManager entityManager);

    boolean validateEmail(String email, EntityManager entityManager);

    boolean validateUsername(String userName, EntityManager entityManager);
}
