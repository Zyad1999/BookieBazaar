package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/makeAdminController")
@MultipartConfig
public class makeAdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
      
        String userId = request.getParameter("userId");
        UserServicesImpl.getUserServicesInstance().makeUserAdmin(Integer.parseInt(userId), (EntityManager)request.getAttribute("entityManager"));

        response.sendRedirect("usersController");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

    }

}
