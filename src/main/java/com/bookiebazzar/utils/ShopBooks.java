package com.bookiebazzar.utils;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.utils.objects.BookFilter;

import jakarta.persistence.EntityManager;

public class ShopBooks {

    public static final int PAGE_SIZE = 15;

    private static ShopBooks shopBooks;

    private static List<BookDto> books;

    private ShopBooks() {
    }

    public static ShopBooks getShopBooksInstance() {
        if (shopBooks == null)
            shopBooks = new ShopBooks();
        return shopBooks;
    }

    public List<BookDto> getFilteredBooks(BookFilter filter, int pageNumber) {
        
        if (books == null){
            EntityManager em = EntityManagerFactorySingleton.getEntityManagerFactory().createEntityManager();
            books = BookServicesImpl.getBookServices().getAllBooks(em);
            em.close();
        }
        return filterBooks(books, filter, pageNumber);
    }

    public List<BookDto> getBooks(int pageNumber) {
        EntityManager em = EntityManagerFactorySingleton.getEntityManagerFactory().createEntityManager();
        if (books == null)
            books = BookServicesImpl.getBookServices().getAllBooks(em);
        return books;
    }

    public void removeBooks() {
        books = null;
    }

    private List<BookDto> filterBooks(List<BookDto> bookList, BookFilter filter, int pageNumber) {

        Stream<BookDto> bookStream = bookList.stream();

        if (filter.getMinPages() != null) {
            bookStream = bookStream.filter(book -> book.getNumberOfPages() >= filter.getMinPages());
        }

        if (filter.getMaxPages() != null) {
            bookStream = bookStream.filter(book -> book.getNumberOfPages() <= filter.getMaxPages());
        }

        if (filter.getMinPrice() != null) {
            bookStream = bookStream.filter(book -> book.getPrice() >= filter.getMinPrice());
        }

        if (filter.getMaxPrice() != null) {
            bookStream = bookStream.filter(book -> book.getPrice() <= filter.getMaxPrice());
        }

        if (filter.getAuthorSearch() != null) {
            bookStream = bookStream.filter(book -> book.getAuthor().contains(filter.getAuthorSearch()));
        }

        if (filter.getNameSearch() != null) {
            bookStream = bookStream.filter(book -> book.getName().contains(filter.getNameSearch()));
        }

        if (filter.getLanguage() != null) {
            bookStream = bookStream.filter(book -> book.getLanguage() == filter.getLanguage());
        }

        if (filter.getCategories() != null && !filter.getCategories().isEmpty()) {
            bookStream = bookStream.filter(book -> filter.getCategories().contains(book.getCategory()));
        }

        return bookStream
                .skip(pageNumber * PAGE_SIZE)
                .limit(PAGE_SIZE)
                .collect(Collectors.toList());
    }

}