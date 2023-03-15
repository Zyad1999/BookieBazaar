package com.bookiebazzar.controller.repositories.interfaces;

import java.util.List;

import com.bookiebazzar.model.entities.Book;

public interface BookRepo {
    public int addBook(Book book);

    public boolean updateBook(Book book);

    public Book findBook(int bookID);

    public boolean removeBook(int bookID);

    public List<Book> getAllBooks();
}
