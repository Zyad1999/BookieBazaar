package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import com.bookiebazzar.controller.repositories.impls.OrderRepoImpl;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.dtos.UserOrderDto;
import com.bookiebazzar.model.entities.UserOrder;
import com.bookiebazzar.utils.enums.Pages;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.bookiebazzar.controller.services.impls.OrderServicesImpl;

@WebServlet("/order_history")
public class OrdersHistoryController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserDto currentUser = (UserDto) req.getSession(false).getAttribute("currentUser");
        HttpSession session = req.getSession(false);
        List<UserOrderDto> listOfOrder;
        if (req.getParameter("id") != null && currentUser.isAdmin()) {

            listOfOrder = OrderServicesImpl.getOrderServices().getListOfOrderDto(
                    Integer.parseInt(req.getParameter("id")), (EntityManager) req.getAttribute("entityManager"));
        } else {
            listOfOrder = OrderServicesImpl.getOrderServices().getListOfOrderDto(
                    ((UserDto) session.getAttribute("currentUser")).getId(),
                    (EntityManager) req.getAttribute("entityManager"));
        }
        // Comparator<UserOrderDto> createdAtComparator = new Comparator<UserOrderDto>()
        // {
        // @Override
        // public int compare(UserOrderDto o1, UserOrderDto o2) {
        // return o1.getCreatedAt().compareTo(o2.getCreatedAt());
        // }
        // };
        // //sort the list using the createdAtComparator
        // Collections.sort(listOfOrder, createdAtComparator);
        Comparator<UserOrderDto> priceComparator = new Comparator<UserOrderDto>() {
            @Override
            public int compare(UserOrderDto o1, UserOrderDto o2) {
                return Integer.compare(o1.getTotalPrice(), o2.getTotalPrice());
            }
        };

        // sort the list using the priceComparator
        Collections.sort(listOfOrder, priceComparator);
        req.setAttribute("listOfOrderDto", listOfOrder);
        Pages.ORDERS_HISTORY.include(req, resp);
    }

}
