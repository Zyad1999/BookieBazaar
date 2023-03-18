package com.bookiebazzar.configs.listeners;

import com.bookiebazzar.utils.ShopBooks;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class ContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent event) {
        ServletContext context = event.getServletContext();
        //access in jsp using ${applicationScope.shopBooks.getBooks(1)}
        context.setAttribute("shopBooks", ShopBooks.getShopBooksInstance());
    }
}
