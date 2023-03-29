package com.bookiebazzar.controller.controllers;

import java.io.IOException;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.enums.Language;
import com.bookiebazzar.utils.ShopBooks;
import com.bookiebazzar.utils.enums.Pages;
import com.bookiebazzar.utils.objects.BookFilter;
import com.google.gson.Gson;
import jakarta.servlet.ServletContext;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/shop")
public class ShopController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        ServletContext context = getServletContext();
        ShopBooks shopBooks = (ShopBooks) context.getAttribute("shopBooks");
        String categoryfilter = req.getParameter("name");
        String reqPageNo = req.getParameter("page");
        String bookNamePara = req.getParameter("bookNamePara");
        
        List<String> listOfCategories = new ArrayList<>();
        List<BookDto> listOfBooksDto;
        int pageNo = 1;
        if(reqPageNo != null){
            try {
                pageNo = Integer.parseInt(reqPageNo);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(bookNamePara != null&& !bookNamePara.isEmpty()){
            BookFilter bookFilter = new BookFilter();
            bookFilter.setNameSearch(bookNamePara);
            listOfBooksDto = shopBooks.getFilteredBooks(bookFilter, pageNo);
            req.setAttribute("noOfPages", shopBooks.getTotalNoOfFilteresPages());
        }    
        else if(categoryfilter!=null && !categoryfilter.isEmpty()){
            BookFilter bookFilter = new BookFilter();
            listOfCategories.add(categoryfilter);
            bookFilter.setCategories(listOfCategories);
            listOfBooksDto = shopBooks.getFilteredBooks(bookFilter, pageNo);
            req.setAttribute("noOfPages", shopBooks.getTotalNoOfFilteresPages());
        } else {
            listOfBooksDto = shopBooks.getBooks(pageNo);
            req.setAttribute("noOfPages", shopBooks.getNoOfPages());
        }
        req.setAttribute("listOfBooks", listOfBooksDto);

        Pages.SHOP.include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        BookFilter bookFilter = new BookFilter();
        String reqPageNo = req.getParameter("page");
        int pageNo = 1;
        if(reqPageNo != null){
            try {
                pageNo = Integer.parseInt(reqPageNo);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            String nameSearch = req.getParameter("nameSearch");
            String authorSearch = req.getParameter("authorSearch");
            Integer minPages = (req.getParameter("minPages") == "")|| (req.getParameter("minPages") == null)? null
                    : Integer.parseInt(req.getParameter("minPages"));
            Integer maxPages = (req.getParameter("maxPages") == "") || (req.getParameter("maxPages") == null)? null
                    : Integer.parseInt(req.getParameter("maxPages"));
            Integer minPrice = (req.getParameter("minPrice") == "") || (req.getParameter("minPrice") == null)? null
                    : Integer.parseInt(req.getParameter("minPrice"));
            Integer maxPrice = (req.getParameter("maxPrice") == "") || (req.getParameter("maxPrice") == null)? null
                    : Integer.parseInt(req.getParameter("maxPrice"));
            Language language = (req.getParameter("language") == null||req.getParameter("language") =="") ? null
                    : Language.valueOf(req.getParameter("language"));
            if (req.getParameterValues("category1") != null) {

                String[] selectedCategories = req.getParameterValues("category1");
                for (String string : selectedCategories) {
                    System.out.println(string);
                }
                List<String> categories = Arrays.asList(selectedCategories);
                bookFilter.setCategories(categories);

            }

            bookFilter.setNameSearch(nameSearch);
            bookFilter.setAuthorSearch(authorSearch);
            bookFilter.setMinPages(minPages);
            bookFilter.setLanguage(language);
            bookFilter.setMaxPages(maxPages);
            bookFilter.setMinPrice(minPrice);
            bookFilter.setMaxPrice(maxPrice);
            ServletContext context = getServletContext();

            ShopBooks shopBooks = (ShopBooks) context.getAttribute("shopBooks");
            List<BookDto> listOfBooksDto = shopBooks.getFilteredBooks(bookFilter, pageNo);
            req.setAttribute("noOfPages", shopBooks.getTotalNoOfFilteresPages());

            Gson gson = new Gson();
            String json = gson.toJson(listOfBooksDto);
            resp.setHeader("X-Total-Pages", String.valueOf(shopBooks.getTotalNoOfFilteresPages()));
            resp.setContentType("application/json");
            resp.getWriter().write(json);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
