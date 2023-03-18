package com.bookiebazzar.utils.mappers;

import java.util.HashSet;
import java.util.Set;
import com.bookiebazzar.model.dtos.BookOrderDto;
import com.bookiebazzar.model.dtos.UserOrderDto;
import com.bookiebazzar.model.entities.BookOrder;
import com.bookiebazzar.model.entities.UserOrder;

public class UserOrderMapper {

    public static UserOrderDto toDto(UserOrder userOrder) {
        UserOrderDto userOrderDto = new UserOrderDto();
        userOrderDto.setUser(UserMapper.toDto(userOrder.getUser()));
        userOrderDto.setId(userOrder.getId());
        userOrderDto.setCreatedAt(userOrder.getCreatedAt());
        userOrderDto.setTotalPrice(userOrder.getTotalPrice());
  
        Set<BookOrderDto> bookOrderDtos = new HashSet<>();
        for (BookOrder bookOrder : userOrder.getBookOrders()) {
            BookOrderDto bookOrderDto = BookOrderMapper.toDto(bookOrder);
            bookOrderDtos.add(bookOrderDto);
        }
        userOrderDto.setBookOrders(bookOrderDtos);
        return userOrderDto;
    }

    public static UserOrder toEntity(UserOrderDto userOrderDto) {
        UserOrder userOrder = new UserOrder();
        userOrder.setUser(UserMapper.toEntity(userOrderDto.getUser()));
        userOrder.setId(userOrderDto.getId());
        userOrder.setCreatedAt(userOrderDto.getCreatedAt());
        userOrder.setTotalPrice(userOrderDto.getTotalPrice());

        Set<BookOrder> bookOrders = new HashSet<>();
        for (BookOrderDto bookOrderDto : userOrderDto.getBookOrders()) {
            BookOrder bookOrder = BookOrderMapper.toEntity(bookOrderDto);
            bookOrders.add(bookOrder);
        }
        userOrder.setBookOrders(bookOrders);

        return userOrder;
    }
}
