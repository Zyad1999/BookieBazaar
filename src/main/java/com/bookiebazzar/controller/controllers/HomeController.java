package com.bookiebazzar.controller.controllers;

import java.io.IOException;

import com.bookiebazzar.controller.repositories.UserRepository;
import com.bookiebazzar.model.entities.Address;
import com.bookiebazzar.model.entities.User;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
@WebServlet("/home")
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        UserRepository userRepo = new UserRepository();

        Address add = new Address();
        Address add2 = new Address();

        User user1 = new User();
        User user2 = new User();

        user1.setAdmin(false);
        user1.setFirstName("yassin");
        user1.setEmail("yassin@gmail.com");
        user1.setLastName("yassin");
        user1.setPassword("123");
        user1.setPhoneNumber("0123");
        user1.setInterests("football");
        user1.setJob("java developer");
        LocalDate date = LocalDate.now();
        user1.setBirthDate(date);

        add.setBuildingNumber(21);
        add.setCity("new cairo");
        add.setCountry("Cairo");
        add.setStreet("23 street");

        user1.setAdress(add);
        add.setUser(user1);
        userRepo.addUser(user1);

        add2.setBuildingNumber(21);
        add2.setCity("new cairo");
        add2.setCountry("Cairo");
        add2.setStreet("23 street");

        user2.setAdmin(true);
        user2.setFirstName("aya");
        user2.setEmail("ayagmailcom");
        user2.setLastName("aya");
        user2.setPassword("456");
        user2.setPhoneNumber("456");
        user2.setInterests("no interest");
        user2.setJob("fultter developer");
        user2.setBirthDate(date);
        user2.setAdress(add2);
        add2.setUser(user2);
        userRepo.addUser(user2);

        System.out.println("---------------find user 1 date--------------------");
        System.out.println(userRepo.findUserById(1).toString());
        System.out.println("---------------find user 2 date--------------------");
        System.out.println(userRepo.findUserById(1).getAdress().toString());
        System.out.println("---------------find user 2 date--------------------");
        System.out.println(userRepo.findUserById(2).toString());
        System.out.println("---------------find user 2 date--------------------");
        System.out.println(userRepo.findUserById(2).getAdress().toString());
        System.out.println("---------------find user by email--------------------");
        System.out.println(userRepo.findUserByEmail("ayagmailcom").toString());
        System.out.println("---------------find all user--------------------");
        for (int i = 0; i < userRepo.getAllUsers().size(); i++) {
            System.out.println(userRepo.getAllUsers().get(i).toString());
        }
        userRepo.makeUserAdmin(1);
        System.out.println("---------------find all user--------------------");
        for (int i = 0; i < userRepo.getAllUsers().size(); i++) {
            System.out.println(userRepo.getAllUsers().get(i).toString());
        }
        user1.setEmail("kong kong");
        userRepo.updateUser(user1);
        System.out.println("---------------find all user--------------------");
        for (int i = 0; i < userRepo.getAllUsers().size(); i++) {
            System.out.println(userRepo.getAllUsers().get(i).toString());
        }
        req.getRequestDispatcher("index.jsp").include(req, resp);

    }

}
