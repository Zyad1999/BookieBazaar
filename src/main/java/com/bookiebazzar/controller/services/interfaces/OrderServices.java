package com.bookiebazzar.controller.services.interfaces;

import java.util.List;

import com.bookiebazzar.model.dtos.UserOrderDto;
import com.bookiebazzar.model.entities.UserOrder;

import jakarta.persistence.EntityManager;

public interface OrderServices {
    
    List<UserOrderDto> getListOfOrderDto(int id,EntityManager em);
}
