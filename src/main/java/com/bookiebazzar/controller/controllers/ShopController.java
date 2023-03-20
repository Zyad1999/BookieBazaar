package com.bookiebazzar.controller.controllers;

import java.io.IOException;

import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.dtos.CategoryDto;
import com.bookiebazzar.utils.ShopBooks;
import com.bookiebazzar.utils.enums.Pages;
import com.bookiebazzar.utils.objects.BookFilter;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.apache.commons.beanutils.BeanUtils;

@WebServlet("/shop")
public class ShopController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ServletContext context = getServletContext();
        ShopBooks shopBooks = (ShopBooks) context.getAttribute("shopBooks");
        List<CategoryDto> categoriesWithRandomImg = BookServicesImpl.getBookServices()
                .getAllCategories((EntityManager) req.getAttribute("entityManager"));
        List<BookDto> listOfBooksDto = shopBooks.getBooks(1);
        req.setAttribute("listOfBooks", listOfBooksDto);
        req.setAttribute("categories", categoriesWithRandomImg);

        Pages.SHOP.include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        BookFilter filterBooks = new BookFilter();
        try {
            BeanUtils.populate(filterBooks, req.getParameterMap());
            ServletContext context = getServletContext();
            ShopBooks shopBooks = (ShopBooks) context.getAttribute("shopBooks");
            List<BookDto> listOfBooksDto = shopBooks.getFilteredBooks(filterBooks, 1);
            req.setAttribute("listOfBooks", listOfBooksDto);
            System.out.println(listOfBooksDto.size());
            for (BookDto bookDto : listOfBooksDto) {
                System.out.println(bookDto.getAuthor()+bookDto.getName());
            }
            Pages.SHOP.include(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
