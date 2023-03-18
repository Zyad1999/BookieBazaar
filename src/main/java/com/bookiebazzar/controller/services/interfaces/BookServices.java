package com.bookiebazzar.controller.services.interfaces;

import java.util.List;

import com.bookiebazzar.model.dtos.BookDto;
import jakarta.persistence.EntityManager;

public interface BookServices {
    
    public List<BookDto> getAllBooks(EntityManager em);
}
