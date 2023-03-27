package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.enums.Language;
import com.bookiebazzar.utils.ShopBooks;
import com.bookiebazzar.utils.enums.Pages;
import com.bookiebazzar.utils.mappers.BookMapper;

import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;

@WebServlet("/editBook")
@MultipartConfig
public class EditBookController extends HttpServlet {

    private static int imageIndex = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
//        request.getRequestDispatcher("book_detail.jsp").forward(request, response);
        Pages.BOOK_DETAIL.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String bookId = request.getParameter("bookId");
        String bookName = request.getParameter("bookName");
        String bookAuthor = request.getParameter("bookAuthor");
        String bookCategoty = request.getParameter("bookCategoty");
        String bookQuantity = request.getParameter("bookQuantity");
        String bookPrice = request.getParameter("bookPrice");
        String numberOfPages = request.getParameter("numberOfPages");
        String bookLanguage = request.getParameter("bookLanguage");
        String bookDescription = request.getParameter("bookDescription");

        BookDto bookDto = new BookDto();
        bookDto.setId(Integer.parseInt(bookId));
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
        Part part = request.getPart("bookImage");
        String fileName = part.getSubmittedFileName();
        if (fileName.equals("")) {
            String bookImageName = request.getParameter("bookImageName");
            bookDto.setImg(bookImageName);

        } else {
            String finlaLocation = getServletContext().getRealPath("//images//book_images") + File.separator + fileName;
            part.write(finlaLocation);
            bookDto.setImg(fileName);
        }

        boolean res = BookServicesImpl.getBookServices().updateBook(BookMapper.toEntity(bookDto), (EntityManager) request.getAttribute("entityManager"));
        if (res) {
            ShopBooks.getShopBooksInstance().removeBooks();
        }

        System.out.println(getServletContext().getRealPath("//images//book_images"));
        response.sendRedirect("book?bookId=" + bookId);


    }

}
