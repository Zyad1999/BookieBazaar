package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.util.Set;

import com.bookiebazzar.controller.repositories.impls.UserRepoImpl;
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
        UserRepoImpl userRepoImpl = new UserRepoImpl();
        User user = userRepoImpl.findUserById( ((UserDto) session.getAttribute("currentUser")).getId(), (EntityManager)req.getAttribute("entityManager"));
        Set<CartItem> setOfCartItem = user.getCartItems();
        req.setAttribute("setOfCartItem", setOfCartItem);
        Pages.CART.include(req, resp);
    }
}
