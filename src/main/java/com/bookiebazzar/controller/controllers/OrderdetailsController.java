package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.util.List;
import com.bookiebazzar.controller.repositories.impls.OrderRepoImpl;
import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.controller.services.impls.OrderServicesImpl;
import com.bookiebazzar.model.dtos.BookOrderDto;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.dtos.UserOrderDto;
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
            try {
                int orderId = Integer.parseInt(req.getParameter("order"));
                UserDto currentUser = (UserDto) req.getSession(false).getAttribute("currentUser");
                UserOrderDto order = OrderServicesImpl.getOrderServices().getOrder(orderId,(EntityManager)req.getAttribute("entityManager"));
                if((order == null)||(!currentUser.isAdmin() && currentUser.getId()!=order.getUserId())){
                    Pages.ERROR.include(req, resp);
                    return;
                }
                List<BookOrderDto> listOfBookOrderDto = BookServicesImpl.getBookServices().getListOfOrderDto(orderId,(EntityManager)req.getAttribute("entityManager") );
                req.setAttribute("listOfBookOrder", listOfBookOrderDto);
                Pages.ORDER_DETAILS.include(req, resp);
            }catch (NumberFormatException e){
                Pages.ERROR.include(req, resp);
            }
        }else {
            Pages.ERROR.include(req, resp);
        }
    }
}
