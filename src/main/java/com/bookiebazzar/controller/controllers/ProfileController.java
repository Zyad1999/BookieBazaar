package com.bookiebazzar.controller.controllers;

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

import java.io.IOException;

@WebServlet("/profile")
public class ProfileController  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if(session == null)
            Pages.HOME.redirect(req, resp);
        UserDto currentUser = (UserDto) session.getAttribute("currentUser");
        if (currentUser == null)
            Pages.HOME.redirect(req, resp);
        if(req.getParameter("id") != null && currentUser.isAdmin()){
            UserDto user = UserServicesImpl.getUserServicesInstance().getUserById(Integer.parseInt(req.getParameter("id")), (EntityManager)req.getAttribute("entityManager"));
            req.setAttribute("user", user);
            req.setAttribute("admin", true);
        }else {
            req.setAttribute("user", currentUser);
        }
        Pages.PROFILE.include(req, resp);
    }
}
