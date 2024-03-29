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
import java.io.IOException;

@WebServlet("/profile")
public class ProfileController  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDto currentUser = (UserDto) req.getSession(false).getAttribute("currentUser");
        if(req.getParameter("id") != null && currentUser.isAdmin()){
            try {
                UserDto user = UserServicesImpl.getUserServicesInstance().getUserById(Integer.parseInt(req.getParameter("id")), (EntityManager)req.getAttribute("entityManager"));
                if(user == null){
                    Pages.ERROR.include(req, resp);
                    return;
                }
                req.setAttribute("user", user);
                req.setAttribute("address", user.getAddress());
                req.setAttribute("admin", true);
            }catch(NumberFormatException e){
                Pages.ERROR.include(req, resp);
                return;
            }
        }else {
            req.setAttribute("user", currentUser);
            req.setAttribute("address", currentUser.getAddress());
        }
        Pages.PROFILE.include(req, resp);
    }
}
