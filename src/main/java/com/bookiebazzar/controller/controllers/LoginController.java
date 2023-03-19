package com.bookiebazzar.controller.controllers;

import java.io.IOException;

import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.utils.enums.Pages;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("currentUser") != null)
            Pages.HOME.redirect(req, resp);
        Pages.LOGIN.include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = (String) req.getParameter("email");
        String password = (String) req.getParameter("password");
        UserDto user = UserServicesImpl.getUserServicesInstance().userLogin(email, password,
                (EntityManager)req.getAttribute("entityManager"));
        if(user!=null){
            HttpSession session = req.getSession(true);
            session.setAttribute("currentUser", user);
            Pages.HOME.redirect(req, resp);
        }else {
            req.setAttribute("loginFailed", true);
            Pages.LOGIN.include(req, resp);
        }
    }
}
