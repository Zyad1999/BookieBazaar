package com.bookiebazzar.utils.mappers;

import com.bookiebazzar.model.dtos.UserOrderDto;
import com.bookiebazzar.model.entities.UserOrder;

public class UserOrderMapper {

    public static UserOrderDto toDto(UserOrder userOrder) {
        UserOrderDto userOrderDto = new UserOrderDto();
        userOrderDto.setUser(UserMapper.toDto(userOrder.getUser()));
        userOrderDto.setId(userOrder.getId());
        userOrderDto.setCreatedAt(userOrder.getCreatedAt());
        userOrderDto.setTotalPrice(userOrder.getTotalPrice());
        return userOrderDto;
    }

    public static UserOrder toEntity(UserOrderDto userOrderDto) {
        UserOrder userOrder = new UserOrder();
        userOrder.setUser(UserMapper.toEntity(userOrderDto.getUser()));
        userOrder.setId(userOrderDto.getId());
        userOrder.setCreatedAt(userOrderDto.getCreatedAt());
        userOrder.setTotalPrice(userOrderDto.getTotalPrice());
        return userOrder;
    }
}
