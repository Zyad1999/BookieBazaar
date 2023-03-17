package com.bookiebazzar.utils.mappers;

import com.bookiebazzar.model.dtos.CartItemDto;
import com.bookiebazzar.model.entities.CartItem;
import com.bookiebazzar.model.entities.CartItemId;

public class CartItemMapper {

    public static CartItemDto toDto(CartItem item) {
        CartItemDto itemDto = new CartItemDto();
        itemDto.setBook(BookMapper.toDto(item.getBook()));
        itemDto.setQuantity(item.getQuantity());
        itemDto.setUserId(item.getId().getUserId());
        return itemDto;
    }

    public static CartItem toEntity(CartItemDto itemDto) {
        CartItem item = new CartItem();
        item.setId(new CartItemId(itemDto.getUserId(),itemDto.getBook().getId()));
        item.setBook(BookMapper.toEntity(itemDto.getBook()));
        item.setQuantity(itemDto.getQuantity());
        return item;
    }
}
