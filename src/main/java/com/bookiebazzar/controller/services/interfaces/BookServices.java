package com.bookiebazzar.controller.services.interfaces;

import java.util.List;
import java.util.Map;

import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.dtos.CategoryDto;

import jakarta.persistence.EntityManager;

public interface BookServices {
    
    public List<BookDto> getAllBooks(EntityManager em);

    public List<CategoryDto> getAllCategories(EntityManager em);
}
