package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.bookiebazzar.controller.repositories.impls.BookRepoImpl;
import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.controller.services.impls.UserServicesImpl;
import com.bookiebazzar.controller.services.interfaces.BookServices;
import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.model.entities.Book;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.model.enums.Language;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;

@WebServlet("/usersController")
@MultipartConfig
public class usersController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("main");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        List<UserDto>UserDto= UserServicesImpl.getUserServicesInstance().getAllUsers(entityManager);
        List<String>isAdmin=new ArrayList<>();
          for(int i=0;i<UserDto.size();i++){
                if(UserDto.get(i).isAdmin()==true){
                    isAdmin.add("true");
                }
                else{
                    isAdmin.add("false");

                }
          }
          request.setAttribute("isAdmin", isAdmin);
        request.setAttribute("UserDto", UserDto);
        request.getRequestDispatcher("users.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
    

    }

}
