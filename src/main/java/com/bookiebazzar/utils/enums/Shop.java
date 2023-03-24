package com.bookiebazzar.utils.enums;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public enum Shop {
    
    Shop("shop.jsp","shop");


    private final String path;
    private final String mapping;

    public String getPath() {
        return path;
    }

    public String getMapping() {
        return mapping;
    }

    Shop( String path, String mapping) {
        this.path = path;
        this.mapping = mapping;
    }

    public void forward(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(this.mapping).forward(req, resp);
    }

    public void include(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(this.path).include(req, resp);
    }
}