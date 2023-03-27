package com.bookiebazzar.configs.filters;

import com.bookiebazzar.model.dtos.UserDto;
import com.bookiebazzar.utils.objects.ValidationMsg;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(urlPatterns = {"/addBook","/editBook","/deleteBook","/makeAdminController"})
public class AdminFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest)request).getSession(false);
        if (session != null && session.getAttribute("currentUser") != null
                && ((UserDto)session.getAttribute("currentUser")).isAdmin() ) {
            chain.doFilter(request, response);
        }
    }
}
