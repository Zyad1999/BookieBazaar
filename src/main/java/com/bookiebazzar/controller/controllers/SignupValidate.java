package com.bookiebazzar.controller.controllers;

import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/validate")
public class SignupValidate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        if(email != null){
            boolean isAvailable = UserServicesImpl.getUserServicesInstance().validateEmail(email,
                    (EntityManager)req.getAttribute("entityManager"));;
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write("{ \"available\": " + isAvailable + " }");
            return;
        }
        String userName = req.getParameter("username");
        System.out.println("___________________________");
        System.out.println(userName);
        if(userName != null){
            boolean isAvailable = UserServicesImpl.getUserServicesInstance().validateUsername(userName,
                    (EntityManager)req.getAttribute("entityManager"));;
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            System.out.println("the res is "+isAvailable);
            resp.getWriter().write("{ \"available\": " + isAvailable + " }");
        }
    }
}
