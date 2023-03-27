package com.bookiebazzar.utils.enums;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public enum Pages {
    
    HOME("index.jsp","home"),
    SHOP("shop.jsp","shop"),
    CART("cart.jsp","cart"),
    ORDERS_HISTORY("orders_history.jsp","orders_history"),
    ORDER_DETAILS("order_details.jsp","order_details"),
    LOGIN("login.jsp","login"),
    SIGNUP("signup.jsp", "signup"),
    PROFILE("profile.jsp", "profile"),
    EDIT_PROFILE("edit_profile.jsp","editeProfile"),
    USERS("users.jsp","usersController"),
    BOOK_DETAIL("book_detail.jsp","book"),
    ERROR("error404.jsp","");

    private final String path;
    private final String mapping;

    public String getPath() {
        return path;
    }

    public String getMapping() {
        return mapping;
    }

    Pages( String path, String mapping) {
        this.path = path;
        this.mapping = mapping;
    }

    public void forward(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(this.mapping).forward(req, resp);
    }

    public void include(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(this.path).include(req, resp);
    }

    public void redirect(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(this.mapping);
    }
}
