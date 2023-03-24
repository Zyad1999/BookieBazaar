package com.bookiebazzar.controller.services.interfaces;

import java.util.List;
import java.util.Map;

import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.dtos.CategoryDto;
import com.bookiebazzar.model.entities.Book;

import jakarta.persistence.EntityManager;

public interface BookServices {
    
    public List<BookDto> getAllBooks(EntityManager em);

    public List<CategoryDto> getAllCategories(EntityManager em);
    public int addBook(Book book,EntityManager em);
    public boolean deleteBook(int id,EntityManager em);

    public BookDto findBook(int bookID, EntityManager entityManager);
   
    public boolean updateBook(Book book,EntityManager em);

}
