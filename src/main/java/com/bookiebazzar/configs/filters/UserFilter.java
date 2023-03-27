package com.bookiebazzar.configs.filters;

import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.utils.enums.Pages;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.http.HttpRequest;

@WebFilter(urlPatterns = {"/profile","/editeProfile","/logout","/update-cart","/add-to-cart","/order_details","/order_history"})
public class UserFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest)request;
        HttpSession session = req.getSession(false);
        if(session == null) {
            if(req.getRequestURI().contains("/logout") || req.getRequestURI().contains("/update-cart")
                        || req.getRequestURI().contains("/add-to-cart")){
                return;
            }
            Pages.HOME.redirect((HttpServletRequest) request, (HttpServletResponse) response);
            return;
        }
        UserDto currentUser = (UserDto) session.getAttribute("currentUser");
        if (currentUser == null) {
            Pages.HOME.redirect((HttpServletRequest) request, (HttpServletResponse) response);
        }
        chain.doFilter(request, response);
    }
}
