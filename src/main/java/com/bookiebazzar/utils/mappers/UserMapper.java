package com.bookiebazzar.utils.mappers;

import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.entities.User;

public class UserMapper {
   
    public static UserDto toDto(User user) {
        UserDto userDto=new UserDto();
        userDto.setId(user.getId());
        userDto.setAdress(user.getAdress());
        userDto.setUserName(user.getUserName());
        userDto.setEmail(user.getEmail());
        userDto.setPassword(user.getPassword());
        userDto.setPhoneNumber(user.getPhoneNumber());
        userDto.setJob(user.getJob());
        userDto.setBirthDate(user.getBirthDate());
        userDto.setCreditLimit(user.getCreditLimit());
        userDto.setAdmin(user.isAdmin());
        return userDto;

    }
     public static User toEntity(UserDto userDto) {
        User user=new User();
        user.setId(userDto.getId());
        user.setAdress(userDto.getAdress());
        user.setUserName(userDto.getUserName());
        user.setEmail(userDto.getEmail());
        user.setPassword(userDto.getPassword());
        user.setPhoneNumber(userDto.getPhoneNumber());
        user.setJob(userDto.getJob());
        user.setBirthDate(userDto.getBirthDate());
        user.setCreditLimit(userDto.getCreditLimit());
        user.setAdmin(userDto.isAdmin());
        return user;

    }

}
