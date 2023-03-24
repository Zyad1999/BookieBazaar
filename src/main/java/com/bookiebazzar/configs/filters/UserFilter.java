package com.bookiebazzar.configs.filters;

import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.utils.enums.Pages;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(urlPatterns = {"/profile","/editeProfile","/logout"})
public class UserFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest)request).getSession(false);
        if(session == null) {
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
