package com.bookiebazzar.utils;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import com.bookiebazzar.controller.services.impls.BookServicesImpl;
import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.dtos.CategoryDto;
import com.bookiebazzar.utils.objects.BookFilter;

import jakarta.persistence.EntityManager;

public class ShopBooks {

    public static final int PAGE_SIZE = 9;

    private static ShopBooks shopBooks;

    private static List<BookDto> books;

    private long totalNoOfRecords;

    private static List<CategoryDto> categoriesWithRandomImg;

    private ShopBooks() {
    }

    public static ShopBooks getShopBooksInstance() {
        if (shopBooks == null)
            shopBooks = new ShopBooks();
        return shopBooks;
    }

    public List<BookDto> getFilteredBooks(BookFilter filter, int pageNumber) {

        if (books == null) {
            EntityManager em = EntityManagerFactorySingleton.getEntityManagerFactory().createEntityManager();
            books = BookServicesImpl.getBookServices().getAllBooks(em);
            em.close();
        }
        return filterBooks(books, filter, pageNumber);
    }

    public List<BookDto> getBooks(int pageNumber) {
        EntityManager em = EntityManagerFactorySingleton.getEntityManagerFactory().createEntityManager();
        if (books == null) {
            books = BookServicesImpl.getBookServices().getAllBooks(em);
        }
        return filterBooks(books, new BookFilter(), pageNumber);
    }

    public List<CategoryDto> getCategories(int pageNumber) {
        EntityManager em = EntityManagerFactorySingleton.getEntityManagerFactory().createEntityManager();
        if (categoriesWithRandomImg == null)
            categoriesWithRandomImg = BookServicesImpl.getBookServices().getAllCategories(em);
        return categoriesWithRandomImg;
    }

    public void removeBooks() {
        books = null;
        categoriesWithRandomImg=null;
    }

    private List<BookDto> filterBooks(List<BookDto> bookList, BookFilter filter, int pageNumber) {

        Stream<BookDto> bookStream = bookList.stream();

        if (filter.getMinPages() != null) {
            System.out.println(filter.getMinPages());
            bookStream = bookStream.filter(book -> book.getNumberOfPages() >= filter.getMinPages());
        }

        if (filter.getMaxPages() != null) {
            System.out.println(filter.getMaxPages());
            bookStream = bookStream.filter(book -> book.getNumberOfPages() <= filter.getMaxPages());
        }

        if (filter.getMinPrice() != null) {
            System.out.println(filter.getMinPrice());
            bookStream = bookStream.filter(book -> book.getPrice() >= filter.getMinPrice());
        }

        if (filter.getMaxPrice() != null) {
            System.out.println(filter.getMaxPrice());
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
        List<BookDto> listOfBookDto = bookStream.collect(Collectors.toList());
        totalNoOfRecords = listOfBookDto.size();

        return listOfBookDto.stream()
                .skip((pageNumber - 1) * PAGE_SIZE)
                .limit(PAGE_SIZE)
                .collect(Collectors.toList());
    }

    public int getNoOfPages() {

        return books.size() % PAGE_SIZE == 0 ? books.size() / PAGE_SIZE : (books.size() / PAGE_SIZE) + 1;
    }

    public long getTotalNoOfFilteresPages() {
        return totalNoOfRecords % PAGE_SIZE == 0 ? totalNoOfRecords / PAGE_SIZE : (totalNoOfRecords / PAGE_SIZE) + 1;
    }
}
