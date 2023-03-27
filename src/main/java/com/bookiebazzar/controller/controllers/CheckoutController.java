package com.bookiebazzar.controller.controllers;

import java.io.IOException;

import com.bookiebazzar.controller.repositories.impls.OrderRepoImpl;
import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.utils.ShopBooks;
import com.bookiebazzar.utils.enums.Pages;
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
        ValidationMsg validationMsg;
        if (session == null || session.getAttribute("currentUser") == null) {
            validationMsg = new ValidationMsg(1,"Please login to place an order");
        } else {
            OrderRepoImpl orderRepoImpl = new OrderRepoImpl();
            validationMsg = orderRepoImpl.createNewOrder(
                    ((UserDto) session.getAttribute("currentUser")).getId(),
                    (EntityManager) req.getAttribute("entityManager"));
            System.out.println(validationMsg.getState() + " " + validationMsg.getMsg());
            if (validationMsg.getState() == 0) {
                UserDto user = UserServicesImpl.getUserServicesInstance().getUserById(((UserDto) session.getAttribute("currentUser")).getId(),
                        (EntityManager) req.getAttribute("entityManager"));
                ShopBooks.getShopBooksInstance().removeBooks();
                req.getSession(false).setAttribute("currentUser", user);
            }
        }
        Gson gson = new Gson();
        String json = gson.toJson(validationMsg);
        resp.setContentType("application/json");
        resp.getWriter().write(json);
    }
}
