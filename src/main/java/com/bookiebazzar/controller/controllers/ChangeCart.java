package com.bookiebazzar.controller.controllers;

import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import com.bookiebazzar.model.dtos.UserDto;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/update-cart")
public class ChangeCart extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        int bookId = Integer.parseInt(req.getParameter("bookId"));
        UserDto user = (UserDto) req.getSession(false).getAttribute("currentUser");
        String newQuantity = req.getParameter("newQuantity");
        if(newQuantity != null){
            boolean res = UserServicesImpl.getUserServicesInstance()
                    .changeCartItemQuantity(user.getId(),bookId,Integer.parseInt(newQuantity),
                            (EntityManager)req.getAttribute("entityManager"));
            System.out.println(res);
            resp.getWriter().write("{ \"updated\": " + res + " }");
        }else{
            boolean res = UserServicesImpl.getUserServicesInstance()
                    .removeCartItem(user.getId(), bookId, (EntityManager)req.getAttribute("entityManager"));
            System.out.println(res);
            resp.getWriter().write("{ \"deleted\": " + res + " }");
        }
    }
}
