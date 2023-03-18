package com.bookiebazzar.controller.services.impls;

import java.util.ArrayList;
import java.util.List;

import com.bookiebazzar.controller.repositories.impls.RepositoryFactoryImpl;
import com.bookiebazzar.controller.services.interfaces.BookServices;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.entities.Book;
import com.bookiebazzar.utils.mappers.BookMapper;

import jakarta.persistence.EntityManager;

public class BookServicesImpl implements BookServices{
    
    private static BookServices bookServices;

    private BookServicesImpl(){}

    public static BookServices getBookServices(){
        if(bookServices == null)
            bookServices = new BookServicesImpl();
        return bookServices;
    }

    @Override
    public List<BookDto> getAllBooks(EntityManager em) {
        List<BookDto> books = new ArrayList<>();
        for (Book book : RepositoryFactoryImpl.getInstance().createBookRepo().getAllBooks(em)) {
            books.add(BookMapper.toDto(book));
        }
        return books;
    }
}
