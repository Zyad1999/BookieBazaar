package com.bookiebazzar.controller.controllers;

import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import com.bookiebazzar.model.dtos.AddressDto;
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
import java.time.LocalDate;

@WebServlet("/signup")
public class SignupController  extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("currentUser") != null)
            Pages.HOME.redirect(req, resp);
        Pages.SIGNUP.include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String job = req.getParameter("job");
        String country = req.getParameter("country");
        String city = req.getParameter("city");
        String street = req.getParameter("street");
        String building = req.getParameter("building");
        int credit = Integer.parseInt(req.getParameter("credit"));
        LocalDate birthdate = LocalDate.parse(req.getParameter("birthdate"));

        AddressDto address = new AddressDto(country, city, street, Integer.parseInt(building));

        UserDto user = new UserDto(address, username, email, password, phone, job, birthdate, credit, false);

        UserDto createdUser = UserServicesImpl.getUserServicesInstance().userSignup(user,
                (EntityManager)req.getAttribute("entityManager"));

        if(createdUser != null){
            HttpSession session = req.getSession(true);
            session.setAttribute("currentUser", createdUser);
            Pages.HOME.redirect(req, resp);
        }else {
            req.setAttribute("signupFailed", true);
            Pages.SIGNUP.include(req, resp);
        }
    }
}
