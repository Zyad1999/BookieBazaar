package com.bookiebazzar.utils.mappers;

import com.bookiebazzar.model.dtos.BookDto;
import com.bookiebazzar.model.entities.Book;

public class BookMapper {
    public static BookDto toDto(Book book) {
        BookDto bookDto = new BookDto();
        bookDto.setId(book.getId());
        bookDto.setName(book.getName());
        bookDto.setPrice(book.getPrice());
        bookDto.setAuthor(book.getAuthor());
        bookDto.setLanguage(book.getLanguage());
        bookDto.setQuantity(book.getQuantity());
        bookDto.setDescription(book.getDescription());
        bookDto.setImg(book.getImg());
        bookDto.setNumberOfPages(book.getNumberOfPages());
        bookDto.setCategory(book.getCategory());
        return bookDto;
    }

    public static Book toEntity(BookDto bookDto) {
        Book book = new Book();
        book.setId(bookDto.getId());
        book.setName(bookDto.getName());
        book.setPrice(bookDto.getPrice());
        book.setAuthor(bookDto.getAuthor());
        book.setLanguage(bookDto.getLanguage());
        book.setQuantity(bookDto.getQuantity());
        book.setDescription(bookDto.getDescription());
        book.setImg(bookDto.getImg());
        book.setNumberOfPages(bookDto.getNumberOfPages());
        book.setCategory(bookDto.getCategory());
        return book;
    }
}

