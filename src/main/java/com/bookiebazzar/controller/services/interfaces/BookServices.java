package com.bookiebazzar.controller.services.interfaces;

import java.util.List;

import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.entities.Book;

import jakarta.persistence.EntityManager;

public interface BookServices {
    
    public List<BookDto> getAllBooks(EntityManager em);

    public int addBook(Book book,EntityManager em);
    public boolean deleteBook(int id,EntityManager em);

}
