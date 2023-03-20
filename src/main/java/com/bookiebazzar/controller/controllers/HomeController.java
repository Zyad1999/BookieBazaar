package com.bookiebazzar.controller.controllers;

import java.io.IOException;

import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.dtos.CategoryDto;
import com.bookiebazzar.utils.ShopBooks;
import com.bookiebazzar.utils.enums.Pages;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet("/home")
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ServletContext context = getServletContext();
        ShopBooks shopBooks = (ShopBooks)context.getAttribute("shopBooks");
        List<BookDto> listOfBooksDto =  shopBooks.getBooks(1);
        List<BookDto> bookSample = listOfBooksDto.stream().limit(8).toList();
        List<CategoryDto> categoriesWithRandomImg = BookServicesImpl.getBookServices().getAllCategories((EntityManager)req.getAttribute("entityManager"));
        req.setAttribute("bookSample", bookSample);
        req.setAttribute("categories",categoriesWithRandomImg);

        Pages.HOME.include(req, resp);
    }

}
