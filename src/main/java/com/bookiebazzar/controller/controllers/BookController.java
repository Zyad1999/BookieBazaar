package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.utils.enums.Pages;
import jakarta.persistence.EntityManager;
import com.bookiebazzar.model.entities.Book;
import com.bookiebazzar.model.enums.Language;
import com.bookiebazzar.utils.ShopBooks;
import com.bookiebazzar.utils.objects.BookFilter;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.Part;

import java.io.File;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/book")
public class BookController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html");
        String id = request.getParameter("bookId");
        try {
            if(id == null){
                Pages.ERROR.include(request, response);
                return;
            }
            Integer.parseInt(id);
        }catch (NumberFormatException e){
            Pages.ERROR.include(request, response);
            return;
        }
        BookDto bookDto = BookServicesImpl.getBookServices().findBook(Integer.parseInt(id), (EntityManager) request.getAttribute("entityManager"));
        if(bookDto == null){
            Pages.ERROR.include(request, response);
            return;
        }
        request.setAttribute("currentBook", bookDto);
        request.setAttribute("bookId", id);

        List<BookDto> listOfBooksDto;
        ServletContext context = getServletContext();
        ShopBooks shopBooks = (ShopBooks) context.getAttribute("shopBooks");
        String categoryfilter = bookDto.getCategory();
        List<String> listOfCategories = new ArrayList<>();
        BookFilter bookFilter = new BookFilter();
        listOfCategories.add(categoryfilter);
        bookFilter.setCategories(listOfCategories);
        listOfBooksDto = shopBooks.getFilteredBooks(bookFilter, 1);
        request.setAttribute("listOfBooks", listOfBooksDto);
        Pages.BOOK_DETAIL.include(request, response);
    }

}
