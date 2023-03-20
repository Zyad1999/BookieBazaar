package com.bookiebazzar.controller.services.interfaces;

import com.bookiebazzar.model.dtos.UserDto;

import jakarta.persistence.EntityManager;

public interface UserServices {
    
    public UserDto getUserById(int userId, EntityManager em);
}