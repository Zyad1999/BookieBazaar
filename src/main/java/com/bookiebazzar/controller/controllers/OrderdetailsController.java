package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.util.List;
import com.bookiebazzar.controller.repositories.impls.OrderRepoImpl;
import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.model.dtos.BookOrderDto;
import com.bookiebazzar.model.entities.BookOrder;
import com.bookiebazzar.utils.enums.Pages;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/order_details")
public class OrderdetailsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        if(!req.getParameter("order").isEmpty()){
            int orderId = Integer.parseInt(req.getParameter("order"));
            List<BookOrderDto> listOfBookOrderDto = BookServicesImpl.getBookServices().getListOfOrderDto(orderId,(EntityManager)req.getAttribute("entityManager") );
            req.setAttribute("listOfBookOrder", listOfBookOrderDto);
            Pages.ORDER_DETAILS.include(req, resp);
        }
    }
}
