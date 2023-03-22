package com.bookiebazzar.controller.services.impls;

import java.util.ArrayList;
import java.util.List;

import com.bookiebazzar.controller.repositories.impls.RepositoryFactoryImpl;
import com.bookiebazzar.controller.services.interfaces.UserServices;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.utils.mappers.UserMapper;

import jakarta.persistence.EntityManager;

public class UserServicesImpl implements UserServices {

    private static UserServices userServices;

    private UserServicesImpl() {
    }

    public static UserServices getUserServicesInstance() {
        if (userServices == null)
            userServices = new UserServicesImpl();
        return userServices;
    }

    @Override
    public UserDto getUserById(int userId, EntityManager em) {
        User user = RepositoryFactoryImpl.getInstance().createUserRepo().findUserById(userId, em);
        if (user != null) {
            return UserMapper.toDto(user);
        }
        return null;
    }

    @Override
    public List<UserDto> getAllUsers(EntityManager em) {
        List<UserDto> usersDto = new ArrayList<>();
        List<User> users = RepositoryFactoryImpl.getInstance().createUserRepo().getAllUsers(em);
        for (int i = 0; i < users.size(); i++) {

            usersDto.add(UserMapper.toDto(users.get(i)));
        }

        return usersDto;

    }

    @Override
    public boolean makeUserAdmin(int userId, EntityManager em) {
        return RepositoryFactoryImpl.getInstance().createUserRepo().makeUserAdmin(userId, em);
    }

}
