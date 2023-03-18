package com.bookiebazzar.utils.mappers;

import com.bookiebazzar.model.dtos.BookOrderDto;
import com.bookiebazzar.model.entities.BookOrder;

public class BookOrderMapper {

    public static BookOrderDto toDto(BookOrder bookOrder) {
        BookOrderDto bookOrderDto = new BookOrderDto();
        bookOrderDto.setBook(BookMapper.toDto(bookOrder.getBook()));
        bookOrderDto.setQuantity(bookOrder.getQuantity());
        bookOrderDto.setOrderId(bookOrder.getId().getOrderId());
        bookOrderDto.setBookId(bookOrder.getId().getBookId());
        return bookOrderDto;
    }

    public static BookOrder toEntity(BookOrderDto bookOrderDto) {
        BookOrder bookOrder = new BookOrder();
        bookOrder.setBook(BookMapper.toEntity(bookOrderDto.getBook()));
        bookOrder.setQuantity(bookOrderDto.getQuantity());
        bookOrder.getId().setOrderId(bookOrderDto.getOrderId());
        bookOrder.getId().setBookId(bookOrderDto.getBookId());
        return bookOrder;
    }
}
