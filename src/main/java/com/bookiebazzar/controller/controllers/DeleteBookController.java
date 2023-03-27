package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.utils.ShopBooks;
import com.bookiebazzar.utils.enums.Pages;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteBook")
public class DeleteBookController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("bookId");
        System.out.println("-----------------------------------------");
        System.out.println(id);
        try {
            boolean res = BookServicesImpl.getBookServices().deleteBook(Integer.parseInt(id),
                (EntityManager) request.getAttribute("entityManager"));
            if(res){
                ShopBooks.getShopBooksInstance().removeBooks();
            }
        }catch (NumberFormatException e){
            Pages.ERROR.include(request, response);
            return;
        }
        Pages.SHOP.redirect(request, response);
    }
}
