package com.bookiebazzar.controller.controllers;

import java.io.IOException;

import com.bookiebazzar.controller.repositories.impls.CartRepoImpl;
import com.bookiebazzar.controller.repositories.impls.UserRepoImpl;
import com.bookiebazzar.controller.repositories.interfaces.CartRepo;
import com.bookiebazzar.model.entities.Address;
import com.bookiebazzar.model.entities.User;
import com.bookiebazzar.utils.enums.Pages;

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

        // EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("main");
        // EntityManager entityManager = entityManagerFactory.createEntityManager();

        // UserRepoImpl userRepo = new UserRepoImpl();
        // Address add = new Address();
        // User user = new User();

        // user.setAdmin(false);
        // user.setUserName("ahmed yassin");
        // user.setEmail("yassinahmed670@gmail.com");
        // user.setPassword("123456789");
        // user.setPhoneNumber("01147775184");
        // user.setJob("java developer");
        // LocalDate date = LocalDate.now();
        // user.setBirthDate(date);

        // add.setBuildingNumber(21);
        // add.setCity("new cairo");
        // add.setCountry("Cairo");
        // add.setStreet("23 street");

        // user.setAdress(add);
        // add.setUser(user);

        // System.out.println("---------------add user --------------------");

        // System.out.println(userRepo.addUser(user, entityManager));

        // System.out.println("---------------find user  date--------------------");
        // System.out.println(userRepo.findUserById(1, entityManager).toString());

        // System.out.println("---------------find user  address--------------------");
        // System.out.println(userRepo.findUserById(1, entityManager).getAdress().toString());

        // System.out.println("---------------find user by email--------------------");
        // System.out.println(userRepo.findUserByEmail("yassinahmed670@gmail.com", entityManager).toString());

        // System.out.println("---------------find all user--------------------");
        // for (int i = 0; i < userRepo.getAllUsers(entityManager).size(); i++) {
        //     System.out.println(userRepo.getAllUsers(entityManager).get(i).toString());
        // }

        // System.out.println("---------------find all user--------------------");
        // userRepo.makeUserAdmin(1, entityManager);
        // for (int i = 0; i < userRepo.getAllUsers(entityManager).size(); i++) {
        //     System.out.println(userRepo.getAllUsers(entityManager).get(i).toString());
        // }

        // System.out.println("---------------find all user--------------------");
        // user.setEmail("ali@gmail.com");
        // userRepo.updateUser(user, entityManager);
        // for (int i = 0; i < userRepo.getAllUsers(entityManager).size(); i++) {
        //     System.out.println(userRepo.getAllUsers(entityManager).get(i).toString());
        // }

        // System.out.println("---------------find user by user name--------------------");
        // System.out.println(userRepo.findUserByUserName("ahmed yassin", entityManager).toString());

        // System.out.println("---------------check user name availability--------------------");
        // System.out.println(userRepo.checkUserNameAvailability("ahmed l", entityManager));

        // System.out.println("---------------check email availability--------------------");
        // System.out.println(userRepo.checkEmailAvailability("ali@gmail.com", entityManager));

        // userRepo.findUserById(1, entityManager).getAdress().setBuildingNumber(100);
        // userRepo.findUserById(1, entityManager).getAdress().setCity("giza");
        // userRepo.findUserById(1, entityManager).getAdress().setCountry("cairo");
        // ;
        // userRepo.findUserById(1, entityManager).getAdress().setStreet("147 street");

        // userRepo.updateUser(user, entityManager);

        // System.out.println("---------------find user  address--------------------");
        // System.out.println(userRepo.findUserById(1, entityManager).getAdress().toString());

        //req.getRequestDispatcher("index.jsp").include(req, resp);
        
        Pages.HOME.include(req, resp);
    }

}
