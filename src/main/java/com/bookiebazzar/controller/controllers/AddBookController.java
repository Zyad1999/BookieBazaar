package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import com.bookiebazzar.controller.repositories.impls.BookRepoImpl;
import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.controller.services.interfaces.BookServices;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.entities.Book;
import com.bookiebazzar.model.enums.Language;
import com.bookiebazzar.utils.enums.Shop;
import com.bookiebazzar.utils.mappers.BookMapper;

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

@WebServlet("/addBook")
@MultipartConfig
public class AddBookController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // get image to save it
        Part part = request.getPart("bookImage");
        String fileName = part.getSubmittedFileName();

        String finlaLocation = getServletContext().getRealPath("//images//book_images") + File.separator + fileName;
        part.write(finlaLocation);
        System.out.println("-----------------------" + fileName + "-----------------");
        // get book parameters from request
        String bookName = request.getParameter("bookName");
        String bookAuthor = request.getParameter("bookAuthor");
        String bookCategoty = request.getParameter("bookCategoty");
        String bookQuantity = request.getParameter("bookQuantity");
        String bookPrice = request.getParameter("bookPrice");
        String numberOfPages = request.getParameter("bookPages");
        String bookLanguage = request.getParameter("bookLanguage");
        String bookDescription = request.getParameter("bookDescription");

        BookDto bookDto = new BookDto();
        bookDto.setAuthor(bookAuthor);
        bookDto.setName(bookName);
        bookDto.setCategory(bookCategoty);
        bookDto.setPrice(Integer.parseInt(bookPrice));
        bookDto.setNumberOfPages(Integer.parseInt(numberOfPages));
        if (bookLanguage.equals("Arabic")) {
            bookDto.setLanguage(Language.ARAB);
        } else if (bookLanguage.equals("English")) {
            bookDto.setLanguage(Language.ENG);
        }
        bookDto.setQuantity(Integer.parseInt(bookQuantity));
        bookDto.setDescription(bookDescription);
        bookDto.setImg(fileName);
        System.out.println(BookServicesImpl.getBookServices().addBook(BookMapper.toEntity(bookDto),
                (EntityManager) request.getAttribute("entityManager")));
        System.out.println(bookDto.toString());
        System.out.println(getServletContext().getRealPath("//images//book_images"));
        response.sendRedirect("shop");
    }

}