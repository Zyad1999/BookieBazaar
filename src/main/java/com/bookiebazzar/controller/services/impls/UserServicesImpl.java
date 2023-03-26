package com.bookiebazzar.controller.services.impls;

import java.util.ArrayList;
import java.util.List;

import com.bookiebazzar.controller.repositories.impls.RepositoryFactoryImpl;
import com.bookiebazzar.controller.services.interfaces.UserServices;
import com.bookiebazzar.model.dtos.CartItemDto;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.utils.mappers.CartItemMapper;
import com.bookiebazzar.utils.mappers.UserMapper;

import jakarta.persistence.EntityManager;
import org.mindrot.jbcrypt.BCrypt;

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



    //service take userdto convert it to entity get result as entity 
    //then convert it to userdto then return it
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

    @Override
    public List<CartItemDto> getUserCart(int userId, EntityManager entityManager){
        List<CartItemDto> cartItemDtos = new ArrayList<>();
        List<CartItem> cartItems = RepositoryFactoryImpl.getInstance().createCartRepo()
                .getUserCart(userId,entityManager);
        for (CartItem item: cartItems){
            cartItemDtos.add(CartItemMapper.toDto(item));
        }
        return cartItemDtos;
    }

    @Override
    public boolean changeCartItemQuantity(int userId, int bookId, int quantity, EntityManager entityManager){
        return RepositoryFactoryImpl.getInstance().createCartRepo()
                .changeItemQuantity(userId, bookId, quantity, entityManager);
    }

    @Override
    public boolean removeCartItem(int userId, int bookId, EntityManager entityManager){
        return RepositoryFactoryImpl.getInstance().createCartRepo()
                .removeCartItem(userId, bookId, entityManager);
    }

    @Override
    public CartItemDto addCartItem(int userId, int bookId, int quantity, EntityManager entityManager){
        return CartItemMapper.toDto(RepositoryFactoryImpl.getInstance().createCartRepo()
                .addCartItem(userId, bookId, quantity, entityManager));
    }
}
