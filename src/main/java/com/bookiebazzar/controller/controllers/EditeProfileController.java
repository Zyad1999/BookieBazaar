package com.bookiebazzar.controller.controllers;

import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import com.bookiebazzar.controller.services.interfaces.UserServices;
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
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/editeProfile")
public class EditeProfileController  extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Pages.EDIT_PROFILE.include(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getParameter("userPassword") != null){
            if(updatePassword(req, resp)){
                Pages.PROFILE.redirect(req, resp);
            }else {
                req.setAttribute("updateFailed", "Incorrect Password Please Try Again");
                Pages.EDIT_PROFILE.include(req, resp);
            }
            return;
        }
        HttpSession session = req.getSession(false);
        String phoneNumber = req.getParameter("phone");
        String job = req.getParameter("job");
        String country = req.getParameter("country");
        String city = req.getParameter("city");
        String street = req.getParameter("street");
        int buildingNumber = Integer.parseInt(req.getParameter("building"));
        int creditLimit = Integer.parseInt(req.getParameter("credit"));
        LocalDate birthDate = LocalDate.parse(req.getParameter("birthdate"));

        AddressDto addressDto = new AddressDto(country, city, street, buildingNumber);
        UserDto userDto = new UserDto();
        userDto.setId(((UserDto)session.getAttribute("currentUser")).getId());
        userDto.setPhoneNumber(phoneNumber);
        userDto.setJob(job);
        userDto.setAddressDto(addressDto);
        userDto.setCreditLimit(creditLimit);
        userDto.setBirthDate(birthDate);

        EntityManager em = (EntityManager)req.getAttribute("entityManager");
        boolean updated = UserServicesImpl.getUserServicesInstance().updateUser(userDto, em);
        if(updated){
            UserDto user = UserServicesImpl.getUserServicesInstance().getUserById(((UserDto)session.getAttribute("currentUser")).getId(), em);
            req.getSession(false).setAttribute("currentUser", user);
            Pages.PROFILE.redirect(req, resp);
        }else {
            req.setAttribute("updateFailed", "Invalid Data Please Try Again");
            Pages.EDIT_PROFILE.include(req, resp);
        }
    }

    public boolean updatePassword(HttpServletRequest req, HttpServletResponse resp){
        String password = req.getParameter("userPassword");
        String newPassword = req.getParameter("newPassword");
        int userId = ((UserDto)req.getSession(false).getAttribute("currentUser")).getId();
        return UserServicesImpl.getUserServicesInstance().updateUserPassword(userId, password, newPassword,
                (EntityManager)req.getAttribute("entityManager"));
    }
}
