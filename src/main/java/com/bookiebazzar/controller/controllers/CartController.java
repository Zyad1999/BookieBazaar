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
        if (session != null && session.getAttribute("currentUser") != null) {
            UserDto currentUser = (UserDto) session.getAttribute("currentUser");
            List<CartItemDto> setOfCartItem = UserServicesImpl.getUserServicesInstance()
                    .getUserCart(currentUser.getId(),(EntityManager)req.getAttribute("entityManager"));
            req.setAttribute("setOfCartItem", setOfCartItem);
            Pages.CART.include(req, resp);
        }else {
            /*List<CartItemDto> setOfCartItem = UserServicesImpl.getUserServicesInstance()
                    .getUserCart(17,(EntityManager)req.getAttribute("entityManager"));
            req.setAttribute("setOfCartItem", setOfCartItem);*/
            Pages.CART.include(req, resp);
        }
    }
}
