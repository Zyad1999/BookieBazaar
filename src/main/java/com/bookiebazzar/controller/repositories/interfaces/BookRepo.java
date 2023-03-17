package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.Book;
import com.bookiebazzar.utils.objects.BookFilter;

import jakarta.persistence.EntityManager;

public interface BookRepo {
    public int addBook(Book book, EntityManager entityManager);

    public boolean updateBook(Book book, EntityManager entityManager);

    public Book findBook(int bookID, EntityManager entityManager);

    public boolean removeBook(int bookID, EntityManager entityManager);

    public List<Book> getAllBooks(BookFilter filter, EntityManager entityManager);
}
