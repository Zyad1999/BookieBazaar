package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.util.List;
import com.bookiebazzar.controller.repositories.impls.OrderRepoImpl;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.entities.UserOrder;
import com.bookiebazzar.utils.enums.Pages;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/order_history")
public class OrdersHistoryController  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        OrderRepoImpl orderRepo = new OrderRepoImpl();
        List<UserOrder> listOfOrder = orderRepo.getUserOrders(((UserDto) session.getAttribute("currentUser")).getId(), (EntityManager)req.getAttribute("entityManager"));
        req.setAttribute("listOfOrderDto", listOfOrder);
        Pages.ORDERS_HISTORY.include(req, resp);
    }
}
