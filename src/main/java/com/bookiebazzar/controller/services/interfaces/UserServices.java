package com.bookiebazzar.controller.services.interfaces;

import java.util.List;

import com.bookiebazzar.model.dtos.UserDto;

import jakarta.persistence.EntityManager;

public interface UserServices {
    
    public UserDto getUserById(int userId, EntityManager em);
    public List<UserDto> getAllUsers( EntityManager em);

    public boolean makeUserAdmin(int userId,EntityManager em);
    

}
