package com.bookiebazzar.controller.services.impls;

import com.bookiebazzar.controller.repositories.impls.RepositoryFactoryImpl;
import com.bookiebazzar.controller.services.interfaces.UserServices;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.utils.mappers.UserMapper;

import jakarta.persistence.EntityManager;
import org.mindrot.jbcrypt.BCrypt;

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
        if(user != null && BCrypt.checkpw(password, user.getPassword())){
            return UserMapper.toDto(user);
        }else{
            return null;
        }
    }

    @Override
    public UserDto userSignup(UserDto user,String hashedPassword, String salt, EntityManager em){
        User newUser = UserMapper.toEntity(user);
        newUser.setPassword(hashedPassword);
        int userId = RepositoryFactoryImpl.getInstance().createUserRepo().addUser(newUser, em);
        if(userId != -1) {
            return UserMapper.toDto(newUser);
        }
        return null;
    }

    @Override
    public boolean updateUser(UserDto userDto, EntityManager em){
        User user = UserMapper.toEntity(userDto);
        return RepositoryFactoryImpl.getInstance().createUserRepo().updateUser(user, em);
    }

    @Override
    public boolean updateUserPassword(int userId,String password,String newPassword, EntityManager entityManager){
        User user = RepositoryFactoryImpl.getInstance().createUserRepo().findUserById(userId, entityManager);
        if(BCrypt.checkpw(password, user.getPassword())){
            return RepositoryFactoryImpl.getInstance().createUserRepo().updatePassword(userId,newPassword,entityManager);
        }
        return false;
    }

    @Override
    public boolean validateEmail(String email, EntityManager entityManager){
        return RepositoryFactoryImpl.getInstance().createUserRepo()
                .checkEmailAvailability(email, entityManager);
    }

    @Override
    public boolean validateUsername(String userName, EntityManager entityManager){
        return RepositoryFactoryImpl.getInstance().createUserRepo()
                .checkUserNameAvailability(userName,entityManager);
    }
}
