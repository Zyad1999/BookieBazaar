package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.util.Set;

import com.bookiebazzar.controller.repositories.impls.UserRepoImpl;

import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.utils.enums.Pages;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cart")
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserRepoImpl userRepoImpl = new UserRepoImpl();
        User user = userRepoImpl.findUserById(1, (EntityManager)req.getAttribute("entityManager"));
        Set<CartItem> setOfCartItem = user.getCartItems();
        req.setAttribute("setOfCartItem", setOfCartItem);
        Pages.CART.include(req, resp);
    }
}
