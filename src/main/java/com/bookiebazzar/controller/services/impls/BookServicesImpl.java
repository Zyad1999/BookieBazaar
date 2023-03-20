package com.bookiebazzar.controller.services.impls;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.bookiebazzar.controller.repositories.impls.RepositoryFactoryImpl;
import com.bookiebazzar.controller.repositories.interfaces.BookRepo;
import com.bookiebazzar.controller.services.interfaces.BookServices;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.dtos.CategoryDto;
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

    @Override
    public List<CategoryDto> getAllCategories(EntityManager em) {
        
        BookRepo bookRepo = RepositoryFactoryImpl.getInstance().createBookRepo();
        Map<String, String> categoriesWithRandomImg = bookRepo.getAllCategories(em);
        List<CategoryDto> listOCategoryDtos = new ArrayList<>();
        int cnt = 0;
        for(Map.Entry<String, String> entry : categoriesWithRandomImg.entrySet()) {
            CategoryDto category = new CategoryDto(entry.getKey(), entry.getValue(), cnt);
            listOCategoryDtos.add(category);
            cnt++;
        }

        return listOCategoryDtos;
    }
}
