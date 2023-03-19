package com.bookiebazzar.utils.mappers;

import java.util.HashSet;
import java.util.Set;

import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.dtos.UserOrderDto;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.model.entities.UserOrder;

public class UserMapper {
   
    public static UserDto toDto(User user) {
        UserDto userDto=new UserDto();
        userDto.setId(user.getId());
        userDto.setAddress(AddressMapper.toDto(user.getAdress()));
        userDto.setUserName(user.getUserName());
        userDto.setEmail(user.getEmail());
        userDto.setPassword(user.getPassword());
        userDto.setPhoneNumber(user.getPhoneNumber());
        userDto.setJob(user.getJob());
        userDto.setBirthDate(user.getBirthDate());
        userDto.setCreditLimit(user.getCreditLimit());
        userDto.setAdmin(user.isAdmin());

        Set<UserOrderDto> userOrders = new HashSet<>();
        for (UserOrder userOrder : user.getOrders()) {
            UserOrderDto userOrderDto = UserOrderMapper.toDto(userOrder);
            userOrders.add(userOrderDto);
        }
        userDto.setOrders(userOrders);
        return userDto;

    }

     public static User toEntity(UserDto userDto) {
        User user=new User();
        user.setId(userDto.getId());
        user.setAdress(AddressMapper.toEntity(userDto.getAddress()));
        user.setUserName(userDto.getUserName());
        user.setEmail(userDto.getEmail());
        user.setPassword(userDto.getPassword());
        user.setPhoneNumber(userDto.getPhoneNumber());
        user.setJob(userDto.getJob());
        user.setBirthDate(userDto.getBirthDate());
        user.setCreditLimit(userDto.getCreditLimit());
        user.setAdmin(userDto.isAdmin());

        Set<UserOrder> userOrders = new HashSet<>();
        for (UserOrderDto userOrderDto : userDto.getOrders()) {
            UserOrder userOrder = UserOrderMapper.toEntity(userOrderDto);
            userOrders.add(userOrder);
        }
        user.setOrders(userOrders);
        return user;
    }
}
