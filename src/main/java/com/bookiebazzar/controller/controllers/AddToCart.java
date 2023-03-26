package com.bookiebazzar.controller.controllers;

import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import com.bookiebazzar.model.dtos.CartItemDto;
import com.bookiebazzar.model.dtos.UserDto;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/add-to-cart")
public class AddToCart extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        String quantity = req.getParameter("quantity");
        String bookId = req.getParameter("bookId");
        if(bookId == null || quantity == null){
            resp.getWriter().write("{ \"error\": \"Invalid Arguments\"}");
            return;
        }
        UserDto user = (UserDto) req.getSession(false).getAttribute("currentUser");
        try {
            CartItemDto cartItemDto = UserServicesImpl.getUserServicesInstance()
                    .addCartItem(user.getId(), Integer.parseInt(bookId),
                            Integer.parseInt(quantity), (EntityManager)req.getAttribute("entityManager"));
            resp.getWriter().write("{ \"item\": "+cartItemDto.toString()+" }");
        }catch (NumberFormatException e){
            resp.getWriter().write("{ \"error\": \"Invalid Arguments\"}");
        }

    }
}
