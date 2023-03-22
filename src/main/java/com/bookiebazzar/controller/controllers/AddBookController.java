package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import com.bookiebazzar.controller.repositories.impls.BookRepoImpl;
import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.controller.services.interfaces.BookServices;
import com.bookiebazzar.model.entities.Book;
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

@WebServlet("/addBook")
@MultipartConfig
public class AddBookController extends HttpServlet {

    private static int imageIndex = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        response.sendRedirect("index.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("main");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        // get image to save it
        Part part = request.getPart("bookImage");
        String fileName = part.getSubmittedFileName();
        int index = fileName.lastIndexOf(".");
        imageIndex++;
        String finlaLocation = getServletContext().getRealPath("//images//book_images") + File.separator + imageIndex
                + fileName.substring(index);
        part.write(finlaLocation);

        // get book parameters from request
        String bookName = request.getParameter("bookName");
        String bookAuthor = request.getParameter("bookAuthor");
        String bookCategoty = request.getParameter("bookCategoty");
        String bookQuantity = request.getParameter("bookQuantity");
        String bookPrice = request.getParameter("bookPrice");
        String numberOfPages = request.getParameter("numberOfPages");
        String bookLanguage = request.getParameter("bookLanguage");
        String bookDescription = request.getParameter("bookDescription");

        Book book = new Book();
        book.setAuthor(bookAuthor);
        book.setName(bookName);
        book.setCategory(bookCategoty);
        book.setPrice(Integer.parseInt(bookPrice));
        book.setNumberOfPages(Integer.parseInt(numberOfPages));
        if (bookLanguage.equals("Arabic")) {
            book.setLanguage(Language.ARAB);
        } else if (bookLanguage.equals("English")) {
            book.setLanguage(Language.ENG);
        }
        book.setQuantity(Integer.parseInt(bookQuantity));
        book.setDescription(bookDescription);
        book.setImg(imageIndex + fileName.substring(index));
        System.out.println(BookServicesImpl.getBookServices().addBook(book, entityManager));
        System.out.println(book.toString());
        System.out.println(getServletContext().getRealPath("//images//book_images"));
        response.sendRedirect("shop.jsp");

    }

}
