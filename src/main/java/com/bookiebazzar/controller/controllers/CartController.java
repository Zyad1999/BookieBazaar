package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import com.bookiebazzar.controller.repositories.impls.UserRepoImpl;

import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import com.bookiebazzar.model.dtos.CartItemDto;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.utils.enums.Pages;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        int total = 0;
        if (session != null && session.getAttribute("currentUser") != null) {
            UserDto currentUser = (UserDto) session.getAttribute("currentUser");
            List<CartItemDto> setOfCartItem = UserServicesImpl.getUserServicesInstance()
                    .getUserCart(currentUser.getId(),(EntityManager)req.getAttribute("entityManager"));
            for(CartItemDto itemDto:setOfCartItem){
                if(itemDto.getBook().getQuantity() <= 0){
                    UserServicesImpl.getUserServicesInstance()
                            .removeCartItem(currentUser.getId(), itemDto.getBook().getId(),
                                    (EntityManager)req.getAttribute("entityManager"));
                    setOfCartItem.remove(itemDto);
                    req.setAttribute("error",itemDto.getBook().getName()+
                            " is out of stock.");
                }else if(itemDto.getQuantity() > itemDto.getBook().getQuantity()){
                    UserServicesImpl.getUserServicesInstance()
                            .changeCartItemQuantity(currentUser.getId(), itemDto.getBook().getId(),
                                    itemDto.getBook().getQuantity(),(EntityManager)req.getAttribute("entityManager"));
                    itemDto.setQuantity(itemDto.getBook().getQuantity());
                    req.setAttribute("error","The available quantity of "+itemDto.getBook().getName()
                            +" is only "+itemDto.getBook().getQuantity()+" items");
                    total += itemDto.getBook().getPrice()*itemDto.getBook().getQuantity();
                }else{
                    total += itemDto.getBook().getPrice()*itemDto.getQuantity();
                }
            }
            req.setAttribute("itemsTotal", total);
            req.setAttribute("total", total+5);
            req.setAttribute("setOfCartItem", setOfCartItem);
            Pages.CART.include(req, resp);
        }else {
            Pages.CART.include(req, resp);
        }
    }
}
