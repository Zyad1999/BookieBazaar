package com.bookiebazzar.controller.services.impls;

import com.bookiebazzar.controller.repositories.impls.RepositoryFactoryImpl;
import com.bookiebazzar.controller.services.interfaces.UserServices;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.utils.mappers.UserMapper;

import jakarta.persistence.EntityManager;

public class UserServicesImpl implements UserServices{

    private static UserServices userServices;

    private UserServicesImpl(){}

    public static UserServices getUserServicesInstance(){
        if(userServices == null)
            userServices = new UserServicesImpl();
        return userServices;
    }

    @Override
    public UserDto getUserById(int userId, EntityManager em) {
        User user = RepositoryFactoryImpl.getInstance().createUserRepo().findUserById(userId, em);
        if(user != null){
            return UserMapper.toDto(user);
        }
        return null;
    }

    @Override
    public UserDto userLogin(String email, String password, EntityManager em){
        User user = RepositoryFactoryImpl.getInstance().createUserRepo().findUserByEmail(email, em);
        if(user != null && user.getPassword().equals(password)){
            return UserMapper.toDto(user);
        }else{
            return null;
        }
    }
}
