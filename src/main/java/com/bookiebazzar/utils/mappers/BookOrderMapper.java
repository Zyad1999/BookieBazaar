package com.bookiebazzar.utils.mappers;

import com.bookiebazzar.model.dtos.BookOrderDto;
import com.bookiebazzar.model.entities.BookOrder;

public class BookOrderMapper {

    public static BookOrderDto toDto(BookOrder bookOrder) {
        if(bookOrder == null){
            return null;
        }
        BookOrderDto bookOrderDto = new BookOrderDto();
        bookOrderDto.setBook(BookMapper.toDto(bookOrder.getBook()));
        bookOrderDto.setQuantity(bookOrder.getQuantity());
        bookOrderDto.setOrderId(bookOrder.getId().getOrderId());
        return bookOrderDto;
    }

    public static BookOrder toEntity(BookOrderDto bookOrderDto) {
        if(bookOrderDto == null){
            return null;
        }
        BookOrder bookOrder = new BookOrder();
        bookOrder.setBook(BookMapper.toEntity(bookOrderDto.getBook()));
        bookOrder.setQuantity(bookOrderDto.getQuantity());
        bookOrder.getId().setOrderId(bookOrderDto.getOrderId());
        bookOrder.getId().setBookId(bookOrderDto.getBook().getId());
        return bookOrder;
    }
}
