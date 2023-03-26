package com.bookiebazzar.controller.controllers;

import java.io.IOException;

import com.bookiebazzar.controller.repositories.impls.OrderRepoImpl;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.utils.objects.ValidationMsg;
import com.google.gson.Gson;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        OrderRepoImpl orderRepoImpl = new OrderRepoImpl();
        ValidationMsg validationMsg = orderRepoImpl.createNewOrder(
                ((UserDto) session.getAttribute("currentUser")).getId(),
                (EntityManager) req.getAttribute("entityManager"));
        System.out.println(validationMsg.getState() + " " + validationMsg.getMsg());
        Gson gson = new Gson();
        String json = gson.toJson(validationMsg);
        resp.setContentType("application/json");
        resp.getWriter().write(json);
        
    }
}
